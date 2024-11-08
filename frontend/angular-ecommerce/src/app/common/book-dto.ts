export class BookDTO{

    constructor(
        public id: number,
        public name: string,
        public author: string,
        public description: string,
        public imageUrl: string,
        public price: number
        ){}

}