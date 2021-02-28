component2 = {
    data() {
        return {
            color: 'red'
        }
    },
    methods: {
        swichColor (newColor) {
            this.color = newColor
        }
    },
    template: `
        <div :style="{ backgroundColor: color }">
            <div class="flex justify-center py-6 items-center">
                <span class="text-lg">Swhich background:</span>
                <button class="bg-blue-400 py-2 px-4 mx-2 rounded-lg" @click="swichColor('blue')">Blue</button>
                <button class="bg-red-400 py-2 px-4 mx-2 rounded-lg" @click="swichColor('red')">Red</button>
            </div>
        </div>
    `
}

let app = Vue.createApp({
    components: {
        'color-panel2' : component2
    }
})

app.component('color-panel', {
    data() {
        return {
            color: 'red'
        }
    },
    methods: {
        swichColor (newColor) {
            this.color = newColor
        }
    },
    template: `
        <div :style="{ backgroundColor: color }">
            <div class="flex justify-center py-6 items-center">
                <span class="text-lg">Swhich background:</span>
                <button class="bg-blue-400 py-2 px-4 mx-2 rounded-lg" @click="swichColor('blue')">Blue</button>
                <button class="bg-red-400 py-2 px-4 mx-2 rounded-lg" @click="swichColor('red')">Red</button>
            </div>
        </div>
    `
})

app.mount('#app')


