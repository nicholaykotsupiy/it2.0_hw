const App = {
    // 8
    beforeCreate() {
        console.log('Эта функция была вызвана ещё до создания приложения')
    },
    updated() {
        console.log('Будет вызвана каждый раз после обновления состояния приложения')
    },
    data () {
        return {
            hidden: true,
            users: [
                {
                    id: new Date().getTime(),
                    name: 'John'
                },
                {
                    id: new Date().getTime(),
                    name: 'Den'
                },
                {
                    id: new Date().getTime(),
                    name: 'Zed'
                },
                {
                    id: new Date().getTime(),
                    name: 'Alis'
                },
                {
                    id: new Date().getTime(),
                    name: 'Marina'
                },
            ],
            value: '',
            maxSymbolNotification: false
        }
    },
    methods: {
        symbolsAlert () {
            alert(`Количество символов в строке = ${this.calcSimbols}`) 
        }
    },
    computed: {
        topUsers () {
            return this.users
                    .slice( this.users.length - 3 )
                    .map((item) => item.name)
                    .join(', ')            
        },
        countSimbols () {
            return this.value.length
        },
        calcSimbols () {
            return this.$refs.inputRef.value.length
        }
    },
    watch: {
        value () {
            if(this.countSimbols > 20) {
                this.maxSymbolNotification = true
            }else {
                this.maxSymbolNotification = false
            }
        }
    }
}
const Inspector = {
    // task 7
    template: `
        <h1 class="text-center text-2xl font-bold py-8 ">{{ title }}</h1>
        <button class="text-xl  border border-black rounded-xl py-2 px-4" @click="clearInput">Clear Input</button>
    `,
    data () {
        return {
            title: "Second App",
        }
    },
    methods: {
        clearInput () {
            app.value = ''
        }
    },
}

let app = Vue.createApp(App).mount('#app')
let inspector = Vue.createApp(Inspector).mount('#inspector')