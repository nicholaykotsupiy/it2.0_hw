const App = {
    data () {
        return {
            title: 'Home Work №1',
            cardTitle: 'MacBook Air 2020',
            countItems: 100,
            countBasket: 0,
            isAvaileble: true,
            description: 'Семейство сверхлегких и производительных ультрабуков с 13,3-дюймовыми экранами Retina Display...',
            render: '<p>New paragraph</p>',
            formName: '',
            formQuestion: '',
            formDescribe: '',
        }
    },
    methods: {
        buyItem () {
            if(this.isAvaileble) {
                this.countItems--
                this.countBasket++
            }else {
                alert('Товар закончился!')
            }
        },
        buyAll () {
            if(this.isAvaileble) {
                this.countBasket += this.countItems
                this.countItems = 0
            }else {
                alert('Товар закончился!')
            }
        },
        eventClick (event) {
            alert(event.target.tagName)
        },
        sayHi (name) {
            alert(`Доброго времени суток ${name}`)
        },
        formPrevent () {
            alert('форма не отправилась')
        },
        getMessage () {
            alert('Сооббщения по нажатию Ctrl')
        }
    },
    watch: {
        countItems () {
            if(this.countItems === 0) {
                console.log(1) 
                this.isAvaileble = false
            } 
        }
    }
}

Vue.createApp(App).mount('#app')