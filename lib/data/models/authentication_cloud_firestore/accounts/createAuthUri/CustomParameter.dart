class CustomParameter {
    final String? string;

    CustomParameter({
        this.string,
    });

    CustomParameter copyWith({
        String? string,
    }) => 
        CustomParameter(
            string: string ?? this.string,
        );

    factory CustomParameter.fromJson(Map<String, dynamic> json) => CustomParameter(
        string: json["string"],
    );

    Map<String, dynamic> toJson() => {
        "string": string,
    };
}