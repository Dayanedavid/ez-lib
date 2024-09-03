export class Book {
    constructor(
        public id: number,
        public sku: string,
        public name: string,
        public description: string,
        public unitPrice: number,
        public imageUrl: string,
        public active: boolean,
        public dateCreated: Date,
        public lastUpdate: Date
    ){

    }
}
