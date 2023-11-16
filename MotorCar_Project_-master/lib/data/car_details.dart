class CarDetails {
  final String imageLink;
  final String title1;
  final String price;
  final String description;
  bool isFavorite = false;

  CarDetails({
    required this.imageLink,
    required this.title1,
    required this.price,
    required this.description,
  });
}

final List<CarDetails> carList = [
  CarDetails(
      imageLink:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh9njI3t6VbyQO7xgIYjAQOJ6wlmSF9c5Qat7__j6XmyzPfo9u0Zpiu3kDCaUNchcNjLCkf8uC4ZdVIiRfu_tPMBgCvtzK89whB99VCk0EI_wVnOk-eP7TfU5aJ3bsquOlSGjO7cdKjw54Lldp_umGNCD4aW4oLjaU4tHVjTDw6IJgffaw0jMEwRA1PMkF0/s320/Captura%20de%20pantalla%202023-10-04%20204312.png',
      title1: 'KIA Picanto 1.2LVibrant',
      price: '\$40,000,000',
      description: '2020 - 41,000 Kms - Bogotá, D.C.'),
  CarDetails(
      imageLink:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgZnAc7t5wCe5oXQqSdx1umEJFAdvLUDcgBXdI7m1HmX-9ipCR9Gt8GtLSOQi0IgWk5_nwUZjRYak_41zlSsMxtqrnT7qsf-T8iYQTbKYRTx3YP20VvfJCjIqek7cyLHIK4i2g6tn7fxEThPaEt_IbocLrqM6NC8d2LOnjTT_v5A4zvpK2lO0puC9csVCKz/s320/Captura%20de%20pantalla%202023-10-04%20204325.png',
      title1: 'Chevrolet AveoFamily 1.5L s/a',
      price: '\$24,000,000',
      description: '2010 - 99,400 Kms Bogotá, D.C.'),
  CarDetails(
      imageLink:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEhcvuuRYsVtiSeCNOKtLt8vgh2eRLY7dUh5JQ1Broq3ASxaDPUJ9MnWRMF-IPX0gSYNp9hn1ac66lICt0nleaZ-rM-w-1gSnVtT5Wlhphv8wGj_kv3TeXeUJHygdx1kccBQinwnRcyIEvOId3UOMyap4jNTVI4BRVm-gHijErJJZkJRNbbzHOru_UpTH7Pg/s320/Captura%20de%20pantalla%202023-10-04%20204338.png',
      title1: 'SEAT Arona Reference',
      price: '\$87,000,000',
      description: '2022 - 3,500 Kms - Cali'),
  CarDetails(
      imageLink:
          'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEh1p3cFtSGvmbnxnTl-Qyic4FFw7LT9vHwx7GSmOGGiTfdox5B81nhVrNbwvCMo23Iw8AZiRmGmE6XfP1-snZc0OHGSZM5ozy7dCCPS52BLRVHmQ0pT1EWoPIi9mmAf33KXNfxJw0PtSj-CDwTBJP8K_E0yuQ6Cz25TVG93DRIPLROh97TyqRh0ViAZJbJv/s320/Captura%20de%20pantalla%202023-10-04%20204352.png',
      title1: 'Chevrolet Colorado4x4 Z71 AT',
      price: '\$175,000,000',
      description: '2023 - 22,000 Kms - Medellín'),
];
