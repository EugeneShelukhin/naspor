class Stake{
  String Category;
  String Title;
  String Description;
  double Amount;
  String Date;

  Stake(String this.Category,String this.Title, String this.Description, double this.Amount, this.Date)
  {
  }
}

class SeedData{
  final List<Stake> Stakes=[
    Stake("Футбол", "матч Италия-Англия", "Матч чемпионата европы по футболу 2022 ...", 100, "27.05.2022"),
    Stake("Футбол", "матч Уэльс-Швейцария", "Матч чемпионата европы по футболу 2022 ...", 100, "28.05.2022"),
    Stake("Футбол", "матч Турция-Франция", "Матч чемпионата европы по футболу 2022 ...", 100, "29.05.2022"),
    Stake("Футбол", "матч Тайланд-Туркменистан", "Матч чемпионата европы по футболу 2022 ...", 100, "30.05.2022"),
    Stake("Футбол", "матч Бахрейн-Мьянма", "Матч чемпионата европы по футболу 2022 ...", 100, "31.05.2022"),
    Stake("Футбол", "матч Малайзия-Бруней", "Матч чемпионата европы по футболу 2022 ...", 100, "01.06.2022"),
    Stake("Футбол", "матч Химик-Зенит-2", "Матч чемпионата европы по футболу 2022 ...", 100, "02.06.2022"),
    Stake("Футбол", "матч Слуцк-Гомель", "Матч чемпионата европы по футболу 2022 ...", 100, "03.06.2022"),
    Stake("Футбол", "матч Васко де Гама-Бруске", "Матч чемпионата европы по футболу 2022 ...", 100, "04.06.2022"),
    Stake("Футбол", "матч Итуано-Наутико", "Матч чемпионата европы по футболу 2022 ...", 100, "05.06.2022"),
    Stake("Футбол", "матч Уэльс-Швейцария", "Матч чемпионата европы по футболу 2022 ...", 100, "06.06.2022"),
    Stake("Футбол", "матч Волна Ковернино-Динамо СПб", "Матч чемпионата европы по футболу 2022 ...", 100, "07.06.2022"),
    Stake("Футбол", "матч Параду-УСМ Алжир", "Матч чемпионата европы по футболу 2022 ...", 100, "08.06.2022"),
    Stake("Футбол", "матч Ислочь-Днепр Могилев", "Матч чемпионата европы по футболу 2022 ...", 100, "09.06.2022"),
    Stake("Футбол", "матч ЮСД-Шелбурн", "Матч чемпионата европы по футболу 2022 ...", 100, "10.06.2022")
  ];
}