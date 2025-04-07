<script setup>
import { ref, onMounted, computed } from "vue";

// Calendar open/close logic
onMounted(() => {
  const calendar_cl = document.getElementById("Opened");
  const calendar_op = document.getElementById("Closed");

  const arrows = document.querySelectorAll('.calender-extension');

  arrows.forEach(element => {
    element.addEventListener("click", function () {
      if (calendar_cl.style.display === "flex") {
        calendar_cl.style.display = "none";
        calendar_op.style.display = "flex";
      } else {
        calendar_cl.style.display = "flex";
        calendar_op.style.display = "none";
      }
    });
  });
});

const daysOfWeek = ['M', 'T', 'W', 'T', 'F', 'S', 'S']

const getDateOffset = (baseDate, offset) => {
  const d = new Date(baseDate)
  d.setDate(d.getDate() + offset)
  return d
}

const formatDate = (date) => {
  const dd = String(date.getDate()).padStart(2, '0')
  const mm = String(date.getMonth() + 1).padStart(2, '0')
  return `${dd}.${mm}`
}

const today = new Date()

const calendarDays = computed(() => {
  const days = []
  for (let i = 3; i >= -3; i--) { // Do YOU want to change how many days the program show past or future? DO IT YOUR SELF WITH THIS AMAZING INTEGER IT'S AS SIMPLE IS THAT N IS THE NUMBER OF DAY YOU SEE INTO THE PAST/FUTURE
    const date = getDateOffset(today, -i)
    days.push({
      label: formatDate(date),
      isToday: i === 0
    })
  }
  return days
})
const currentYear = ref(today.getFullYear())
const currentMonth = ref(today.getMonth()) // 0-based
const selectedDate = ref(new Date(today))

const getMonthDays = (year, month) => {
  const firstDay = new Date(year, month, 1)
  const lastDay = new Date(year, month + 1, 0)
  const daysInMonth = lastDay.getDate()
  const startDay = (firstDay.getDay() + 6) % 7 // adjust so Monday = 0
  const days = []

  // Previous month fillers
  const prevLastDay = new Date(year, month, 0)
  for (let i = startDay - 1; i >= 0; i--) {
    const date = new Date(year, month - 1, prevLastDay.getDate() - i)
    days.push({
      date,
      isCurrentMonth: false,
      isToday: isSameDate(date, today)
    })
  }

  for (let i = 1; i <= daysInMonth; i++) {
    const date = new Date(year, month, i)
    days.push({
      date,
      isCurrentMonth: true,
      isToday: isSameDate(date, today)
    })
  }

  // Next month fillers
  const totalCells = Math.ceil(days.length / 5) * 5
  let i = 1
  while (days.length < totalCells) {
    const date = new Date(year, month + 1, i++)
    days.push({
      date,
      isCurrentMonth: false,
      isToday: isSameDate(date, today)
    })
  }

  return days
}

const isSameDate = (a, b) =>
  a.getDate() === b.getDate() &&
  a.getMonth() === b.getMonth() &&
  a.getFullYear() === b.getFullYear()

const calendarGrid = computed(() => {
  const flatDays = getMonthDays(currentYear.value, currentMonth.value)
  const rows = []

  for (let i = 0; i < flatDays.length; i += 7) {
    rows.push(flatDays.slice(i, i + 7))
  }

  return rows // rows of 7 days each
})

const changeMonth = (delta) => {
  const newDate = new Date(currentYear.value, currentMonth.value + delta)
  currentYear.value = newDate.getFullYear()
  currentMonth.value = newDate.getMonth()
}

const currentMonthName = computed(() =>
  new Date(currentYear.value, currentMonth.value).toLocaleString('default', { month: 'long' })
)
const showNote = ref(false)
const noteText = ref('This is your note')

const noteOptions = [
  "Leg Day",
  "Arm Day",
  "Keep it simple today.",
  "Call someone you care about."
]

const generateNoteText = (dayNumber) => {
  const index = dayNumber % 4
  return noteOptions[index]
}

const selectDay = (day) => {
  if (selectedDate.value?.toDateString() === day.date.toDateString()) {
    showNote.value = !showNote.value
  } else {
    selectedDate.value = day.date
    showNote.value = true
  }

  console.log('Selected day:', day.date)
}
</script>

<template>
  <header>
    <div class="calender calender-text" id="Closed">
      <h3 v-for="(day, index) in calendarDays" :key="index" :id="day.isToday ? 'today' : null">
        {{ day.label }}
      </h3>
      <img src="/src/assets/arrow.svg" class="op arrow calender-extension">
    </div>
    <div class="calender" id="Opened" style="display:none;">
      <div class="calendar-header">
        <button @click="changeMonth(-1)">‹</button>
        <span>{{ currentMonthName }} {{ currentYear }}</span>
        <button @click="changeMonth(1)">›</button>
      </div>
      <div class="numbers-days calendar">
        <div class="number-row header-row">
          <div class="days" v-for="day in daysOfWeek" :key="day">{{ day }}</div>
        </div>
        <div class="number-row" v-for="(row, rowIndex) in calendarGrid" :key="rowIndex">
          <div v-for="(day, dayIndex) in row" :key="dayIndex" :class="[
            'numbers',
            day.isToday ? 'today' : '',
            day.isCurrentMonth ? '' : 'next-month'
          ]" @click="selectDay(day)">
            {{ day.date.getDate() }}
            <div v-if="showNote && day.date.toDateString() === selectedDate?.toDateString()" class="note-popup">
              {{ day.date }}
            </div>
          </div>
          <img src="/src/assets/arrow.svg" class="cl arrow calender-extension">
        </div>
      </div>
    </div>
  </header>

  <RouterView />

  <footer>
    <RouterLink to="/profile" class="footer-buttons">
      <img src="/src/assets/profile.svg" class="profile">
    </RouterLink>
    <RouterLink to="/" class="footer-buttons">
      <img src="/src/assets/home1.svg" class="home">
    </RouterLink>
    <RouterLink to="/plans" class="footer-buttons">
      <img src="/src/assets/plans.svg" class="plans">
    </RouterLink>
    <RouterLink to="/help" class="footer-buttons">
      <img src="/src/assets/help.svg" class="help">
    </RouterLink>
  </footer>
</template>

<style scoped>
html,
body,
template {
  display: flex;
  justify-content: center;
  align-items: center;
  overflow: hidden;
}

header {
  background-color: #0D0101;
}

footer {
  display: flex;
  justify-content: center;
  align-items: center;
  position: fixed;
  background-color: #26262d;
  width: 100%;
  bottom: 0px;
  left: 0px;
  border-top: 2px solid white;
  z-index: 1;
}

.note-popup {
  position: absolute;
  background: #4d4d4d6b;
  color: white;
  text-shadow: #18152b;
  border: 1px solid #ccc;
  border-radius: 6px;
  padding: 0.5rem;
  font-size: 0.8rem;
  margin-top: 0.3rem;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.1);
  z-index: 10;
}

.calendar-cell {
  position: relative;
}

.profile {
  width: 55px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.home {
  width: 50px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.plans {
  width: 50px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.help {
  width: 40px;
  height: auto;
  margin-right: 30px;
  margin-left: 30px;
}

.footer-pictures {
  display: flex;
  align-items: center;
  justify-content: center;
}

.footer-buttons {
  background-color: transparent;
  border: none;
}

h1 {
  color: white;
  font-family: Oswald;
  font-size: 25px;
  margin-top: 5px;
}

h2 {
  font-size: 20px;
  font-family: Oswald;
  font-weight: bold;
  color: white;
}

h3 {
  font-size: 20px;
  font-family: roboto;
  color: white;
  font-weight: normal;
}

.footer-pictures {
  display: flex;
  align-items: center;
  justify-content: center;
}

.footer-buttons {
  background-color: transparent;
  border: none;
}

#today {
  color: white;
  font-weight: bold;
  text-shadow: 0 0 10px white, 0 0 20px white, 0 0 40px white, 0 0 60px white, 0 0 80px white, 0 0 100px white, 0 0 120px white, 0 0 140px white, 0 0 160px white, 0 0 180px white, 0 0 200px white;
}

#Closed,
#Opened {
  position: fixed;
  top: 0px;
  width: 100%;
  z-index: 2;
  display: flex;
  align-items: center;
  overflow-x: auto;
  white-space: nowrap;
  scrollbar-width: none;
  background-color: #0D0101;
  scroll-behavior: smooth;
}

#Opened {
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 520px;
  overflow-x: auto;
  white-space: nowrap;
  scrollbar-width: none;
  background-color: #26262d;
  scroll-behavior: smooth;
  border-bottom: 2px solid white;
  z-index: 10;

}

#Closed {
  height: 50px;
  justify-content: space-between;
  align-items: center;
}


.arrow {
  width: 50px;
  height: 50px;
  width: auto;
  transform: scaleY(-1);
  z-index: 12;
  background-color: #000000db;
  position: absolute;
  right: 0px;
  top: 0px;
}

#Closed .arrow {
  transform: scaleY(1);
}

#Opened .arrow {
  position: absolute;
}

.calender::-webkit-scrollbar {
  display: none;
}

.calender-text {
  background-color: transparent;
  color: white;
}

.february-text {
  display: flex;
  align-items: center;
  justify-content: center;
}

.numbers-days {
  display: flex;
  flex-direction: column;
  justify-content: flex-start;
}

.numbers {
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  text-align: center;
  margin-left: 15px;
  margin-right: 15px;
  text-shadow: 8px 4px 4px #18152b;
}

.numbers1 {
  width: 100%;
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  text-align: center;
  text-shadow: 8px 4px 4px #18152b;
  border-radius: 50%;
  background-color: #43454D;
}

.days {
  font-size: 40px;
  font-family: Oswald;
  font-weight: normal;
  color: white;
  margin-left: 22.5px;
  margin-right: 22.5px;
}

.number-row {
  display: grid;
  grid-template-columns: repeat(7, 0.5fr);
  text-align: center;
  margin-top: 5px;
}

.next-month {
  color: #2f2f2f;
  text-shadow: 8px 4px 4px #18152b;
}

.overlay {
  z-index: 10;
  position: fixed;
  top: 150px;
  right: 146px;
  background-color: #d9d9d9;
  color: black;
  font-family: oswald;
  font-size: 20px;
  width: fit-content;
  height: fit-content;
  padding: 5px;
  padding-left: 15px;
  display: flex;
  border-radius: 15px;
  padding-right: 15px;
  align-items: center;
  justify-content: center;
}
</style>
