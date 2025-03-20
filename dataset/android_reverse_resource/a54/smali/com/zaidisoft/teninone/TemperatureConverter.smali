.class public Lcom/zaidisoft/teninone/TemperatureConverter;
.super Landroid/support/v4/app/Fragment;
.source "TemperatureConverter.java"


# static fields
.field private static final DEGREE_SYMBOL:Ljava/lang/String; = "&#176"


# instance fields
.field private editTemp:Landroid/widget/EditText;

.field private fromTempSpinner:Landroid/widget/Spinner;

.field private newTemp:Landroid/widget/TextView;

.field private tempTool:Lcom/zaidisoft/teninone/TenTool;

.field private toTempSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private celsiusToFahrenheit(D)D
    .locals 5
    .param p1, "celsiusTemp"    # D

    .prologue
    .line 177
    const-wide/high16 v0, 0x4022000000000000L    # 9.0

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private celsiusToKelvin(D)D
    .locals 3
    .param p1, "celsius"    # D

    .prologue
    .line 181
    const-wide v0, 0x4071126666666666L    # 273.15

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private fahrenheitToCelsius(D)D
    .locals 5
    .param p1, "fahrenheitTemp"    # D

    .prologue
    .line 173
    const-wide/high16 v0, 0x4040000000000000L    # 32.0

    sub-double v0, p1, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4022000000000000L    # 9.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private fahrenheitToKelvin(D)D
    .locals 3
    .param p1, "fahrenheit"    # D

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/TemperatureConverter;->fahrenheitToCelsius(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/TemperatureConverter;->celsiusToKelvin(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private kelvinToCelsius(D)D
    .locals 3
    .param p1, "kelvin"    # D

    .prologue
    .line 185
    const-wide v0, 0x4071126666666666L    # 273.15

    sub-double v0, p1, v0

    return-wide v0
.end method

.method private kelvinToFahrenheit(D)D
    .locals 3
    .param p1, "kelvin"    # D

    .prologue
    .line 193
    invoke-direct {p0, p1, p2}, Lcom/zaidisoft/teninone/TemperatureConverter;->kelvinToCelsius(D)D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/zaidisoft/teninone/TemperatureConverter;->celsiusToFahrenheit(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected convertTemperature()V
    .locals 14

    .prologue
    .line 78
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 79
    .local v9, "valueToConvert":Ljava/lang/String;
    const-string v3, ""

    .line 83
    .local v3, "tempUnit":Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 84
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/TemperatureConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    const-string v11, "Value is required"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 85
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 86
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 87
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    const-string v11, ""

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 91
    .local v6, "oldTemperature":D
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->fromTempSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "fromTemp":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->toTempSpinner:Landroid/widget/Spinner;

    invoke-virtual {v10}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "toTemp":Ljava/lang/String;
    const-string v10, "&#176"

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 96
    .local v0, "degreeSymbol":Landroid/text/Spanned;
    const-string v10, "Celsius"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "Fahrenheit"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 97
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 98
    invoke-direct {p0, v6, v7}, Lcom/zaidisoft/teninone/TemperatureConverter;->celsiusToFahrenheit(D)D

    move-result-wide v12

    const/4 v11, 0x1

    .line 97
    invoke-virtual {v10, v12, v13, v11}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v4

    .line 99
    .local v4, "newTemperature":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .end local v2    # "mTempUnit":Ljava/lang/String;
    .end local v4    # "newTemperature":D
    :cond_2
    const-string v10, "Fahrenheit"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "Celsius"

    .line 105
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 106
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 107
    invoke-direct {p0, v6, v7}, Lcom/zaidisoft/teninone/TemperatureConverter;->fahrenheitToCelsius(D)D

    move-result-wide v12

    const/4 v11, 0x1

    .line 106
    invoke-virtual {v10, v12, v13, v11}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v4

    .line 108
    .restart local v4    # "newTemperature":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "C"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .restart local v2    # "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v2    # "mTempUnit":Ljava/lang/String;
    .end local v4    # "newTemperature":D
    :cond_3
    const-string v10, "Celsius"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "Kelvin"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 114
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 115
    invoke-direct {p0, v6, v7}, Lcom/zaidisoft/teninone/TemperatureConverter;->celsiusToKelvin(D)D

    move-result-wide v12

    const/4 v11, 0x2

    .line 114
    invoke-virtual {v10, v12, v13, v11}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v4

    .line 116
    .restart local v4    # "newTemperature":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .end local v2    # "mTempUnit":Ljava/lang/String;
    .end local v4    # "newTemperature":D
    :cond_4
    const-string v10, "Fahrenheit"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "Kelvin"

    .line 122
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 123
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 124
    invoke-direct {p0, v6, v7}, Lcom/zaidisoft/teninone/TemperatureConverter;->fahrenheitToKelvin(D)D

    move-result-wide v12

    const/4 v11, 0x2

    .line 123
    invoke-virtual {v10, v12, v13, v11}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v4

    .line 125
    .restart local v4    # "newTemperature":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 127
    .restart local v2    # "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    .end local v2    # "mTempUnit":Ljava/lang/String;
    .end local v4    # "newTemperature":D
    :cond_5
    const-string v10, "Kelvin"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "Celsius"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 131
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 132
    invoke-direct {p0, v6, v7}, Lcom/zaidisoft/teninone/TemperatureConverter;->kelvinToCelsius(D)D

    move-result-wide v12

    const/4 v11, 0x1

    .line 131
    invoke-virtual {v10, v12, v13, v11}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v4

    .line 133
    .restart local v4    # "newTemperature":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "C"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    .restart local v2    # "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .end local v2    # "mTempUnit":Ljava/lang/String;
    .end local v4    # "newTemperature":D
    :cond_6
    const-string v10, "Kelvin"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "Fahrenheit"

    .line 139
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 140
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 141
    invoke-direct {p0, v6, v7}, Lcom/zaidisoft/teninone/TemperatureConverter;->kelvinToFahrenheit(D)D

    move-result-wide v12

    const/4 v11, 0x1

    .line 140
    invoke-virtual {v10, v12, v13, v11}, Lcom/zaidisoft/teninone/TenTool;->round(DI)D

    move-result-wide v4

    .line 142
    .restart local v4    # "newTemperature":D
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .end local v2    # "mTempUnit":Ljava/lang/String;
    .end local v4    # "newTemperature":D
    :cond_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 148
    move-wide v4, v6

    .line 149
    .restart local v4    # "newTemperature":D
    const-string v10, "Kelvin"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "Kelvin"

    .line 150
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 151
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "K"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    :cond_8
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    .restart local v2    # "mTempUnit":Ljava/lang/String;
    iget-object v10, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 152
    .end local v2    # "mTempUnit":Ljava/lang/String;
    :cond_9
    const-string v10, "Celsius"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "Celsius"

    .line 153
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 154
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "C"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 155
    :cond_a
    const-string v10, "Fahrenheit"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "Fahrenheit"

    .line 156
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 157
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f0b001b

    const v8, 0x1090009

    .line 31
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/TemperatureConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b0032

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 33
    .local v3, "tempView":Landroid/view/View;
    const v5, 0x7f09006a

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->fromTempSpinner:Landroid/widget/Spinner;

    .line 34
    const v5, 0x7f0900fd

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->toTempSpinner:Landroid/widget/Spinner;

    .line 36
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/TemperatureConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030004

    invoke-static {v5, v6, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 39
    .local v1, "fromTempAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 40
    iget-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->fromTempSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    invoke-virtual {p0}, Lcom/zaidisoft/teninone/TemperatureConverter;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f030007

    invoke-static {v5, v6, v9}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v4

    .line 45
    .local v4, "toTempAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 46
    iget-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->toTempSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 48
    const v5, 0x7f0900ea

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    .line 49
    iget-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    .line 51
    const v5, 0x7f090099

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    .line 53
    const v5, 0x7f0900b7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 54
    .local v2, "resetButton":Landroid/widget/Button;
    new-instance v5, Lcom/zaidisoft/teninone/TemperatureConverter$1;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/TemperatureConverter$1;-><init>(Lcom/zaidisoft/teninone/TemperatureConverter;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v5, 0x7f090042

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, "convertButton":Landroid/widget/Button;
    new-instance v5, Lcom/zaidisoft/teninone/TemperatureConverter$2;

    invoke-direct {v5, p0}, Lcom/zaidisoft/teninone/TemperatureConverter$2;-><init>(Lcom/zaidisoft/teninone/TemperatureConverter;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v5, Lcom/zaidisoft/teninone/TenTool;

    invoke-direct {v5}, Lcom/zaidisoft/teninone/TenTool;-><init>()V

    iput-object v5, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->tempTool:Lcom/zaidisoft/teninone/TenTool;

    .line 73
    return-object v3
.end method

.method protected resetConverter()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->fromTempSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 167
    iget-object v0, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->toTempSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 168
    iget-object v0, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->editTemp:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/zaidisoft/teninone/TemperatureConverter;->newTemp:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
