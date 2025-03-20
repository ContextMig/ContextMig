.class public abstract Lcom/haringeymobile/ukweather/ThemedActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ThemedActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x79c2510b7b5a39e7L    # -1.308211431264685E-278

    const-string v2, "com/haringeymobile/ukweather/ThemedActivity"

    const/16 v3, 0x45

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 22
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private getThemeResourceId(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v3

    .line 84
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const/16 v4, 0x1b

    aput-boolean v2, v3, v4

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". (The value must be defined in xml: res->values->strings_for_settings->pref_theme_values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x3d

    aput-boolean v2, v3, v4

    throw v1

    .line 84
    :sswitch_0
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x1c

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v4, 0x1d

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_1
    const-string v4, "1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x1e

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f

    aput-boolean v2, v3, v1

    move v1, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "2"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x20

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    const/16 v4, 0x21

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_3
    const-string v4, "3"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x22

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    const/16 v4, 0x23

    aput-boolean v2, v3, v4

    goto :goto_0

    :sswitch_4
    const-string v4, "4"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const/16 v4, 0x24

    aput-boolean v2, v3, v4

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    const/16 v4, 0x25

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "5"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x26

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x5

    const/16 v4, 0x27

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "6"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v4, 0x28

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x6

    const/16 v4, 0x29

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "7"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x2a

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x7

    const/16 v4, 0x2b

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const/16 v4, 0x2c

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x8

    const/16 v4, 0x2d

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "9"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x2e

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x9

    const/16 v4, 0x2f

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "10"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const/16 v4, 0x30

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    const/16 v4, 0x31

    aput-boolean v2, v3, v4

    goto/16 :goto_0

    .line 86
    :pswitch_0
    const v0, 0x7f0800b0

    .line 87
    .local v0, "theme":I
    const/16 v1, 0x32

    aput-boolean v2, v3, v1

    .line 123
    :goto_1
    const/16 v1, 0x3e

    aput-boolean v2, v3, v1

    return v0

    .line 89
    .end local v0    # "theme":I
    :pswitch_1
    const v0, 0x7f0800b2

    .line 90
    .restart local v0    # "theme":I
    const/16 v1, 0x33

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 92
    .end local v0    # "theme":I
    :pswitch_2
    const v0, 0x7f0800b1

    .line 93
    .restart local v0    # "theme":I
    const/16 v1, 0x34

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 95
    .end local v0    # "theme":I
    :pswitch_3
    const v0, 0x7f0800ad

    .line 96
    .restart local v0    # "theme":I
    const/16 v1, 0x35

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 98
    .end local v0    # "theme":I
    :pswitch_4
    const v0, 0x7f0800af

    .line 99
    .restart local v0    # "theme":I
    const/16 v1, 0x36

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 101
    .end local v0    # "theme":I
    :pswitch_5
    const v0, 0x7f0800a9

    .line 102
    .restart local v0    # "theme":I
    const/16 v1, 0x37

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 104
    .end local v0    # "theme":I
    :pswitch_6
    const v0, 0x7f0800ac

    .line 105
    .restart local v0    # "theme":I
    const/16 v1, 0x38

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 107
    .end local v0    # "theme":I
    :pswitch_7
    const v0, 0x7f0800b3

    .line 108
    .restart local v0    # "theme":I
    const/16 v1, 0x39

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 110
    .end local v0    # "theme":I
    :pswitch_8
    const v0, 0x7f0800ae

    .line 111
    .restart local v0    # "theme":I
    const/16 v1, 0x3a

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 113
    .end local v0    # "theme":I
    :pswitch_9
    const v0, 0x7f0800ab

    .line 114
    .restart local v0    # "theme":I
    const/16 v1, 0x3b

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 116
    .end local v0    # "theme":I
    :pswitch_a
    const v0, 0x7f0800aa

    .line 117
    .restart local v0    # "theme":I
    const/16 v1, 0x3c

    aput-boolean v2, v3, v1

    goto :goto_1

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_8
        0x39 -> :sswitch_9
        0x61f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private setAppTheme()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x15

    aput-boolean v6, v0, v2

    .line 68
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_theme"

    const v4, 0x7f06012c

    const/16 v5, 0x16

    aput-boolean v6, v0, v5

    .line 70
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x17

    aput-boolean v6, v0, v4

    .line 68
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x18

    aput-boolean v6, v0, v2

    .line 72
    invoke-direct {p0, v1}, Lcom/haringeymobile/ukweather/ThemedActivity;->getThemeResourceId(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    aput-boolean v6, v0, v2

    .line 73
    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/ThemedActivity;->setTheme(I)V

    .line 74
    const/16 v1, 0x1a

    aput-boolean v6, v0, v1

    return-void
.end method


# virtual methods
.method protected getActivityLabelResourceId()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ActivityInfo;->labelRes:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, "labelRes":I
    const/4 v2, 0x6

    aput-boolean v5, v1, v2

    return v0

    .line 35
    .end local v0    # "labelRes":I
    :catch_0
    move-exception v2

    const/4 v2, 0x4

    aput-boolean v5, v1, v2

    .line 36
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    const/4 v3, 0x5

    aput-boolean v5, v1, v3

    throw v2
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 128
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    const/16 v1, 0x3f

    aput-boolean v2, v0, v1

    .line 129
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->playAnimation()V

    .line 130
    const/16 v1, 0x40

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 26
    invoke-direct {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->setAppTheme()V

    aput-boolean v2, v0, v2

    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 28
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getActivityLabelResourceId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/haringeymobile/ukweather/ThemedActivity;->setTitle(I)V

    .line 29
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 148
    const/4 v1, 0x0

    const/16 v3, 0x44

    aput-boolean v0, v2, v3

    move v0, v1

    :goto_0
    return v0

    .line 144
    :pswitch_0
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->finish()V

    const/16 v1, 0x42

    aput-boolean v0, v2, v1

    .line 145
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->playAnimation()V

    .line 146
    const/16 v1, 0x43

    aput-boolean v0, v2, v1

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    .line 44
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x8

    aput-boolean v4, v0, v2

    .line 45
    const-string v2, "app_language"

    const-string v3, "device_language"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-boolean v4, v0, v2

    .line 47
    const-string v2, "device_language"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    aput-boolean v4, v0, v1

    .line 51
    :goto_0
    const/16 v1, 0xe

    aput-boolean v4, v0, v1

    return-void

    .line 47
    :cond_0
    const/16 v2, 0xb

    aput-boolean v4, v0, v2

    .line 48
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haringeymobile/ukweather/utils/MiscMethods;->updateLocale(Ljava/lang/String;Landroid/content/res/Resources;)V

    const/16 v1, 0xc

    aput-boolean v4, v0, v1

    .line 49
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->resetActionBarTitle()V

    const/16 v1, 0xd

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method protected playAnimation()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateResource"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {p0, v1, v2}, Lcom/haringeymobile/ukweather/ThemedActivity;->overridePendingTransition(II)V

    .line 138
    const/16 v1, 0x41

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method protected resetActionBarTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/ThemedActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 54
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-nez v0, :cond_0

    const/16 v3, 0xf

    aput-boolean v4, v2, v3

    .line 61
    :goto_0
    const/16 v3, 0x14

    aput-boolean v4, v2, v3

    return-void

    .line 55
    :cond_0
    const/16 v3, 0x10

    aput-boolean v4, v2, v3

    .line 56
    invoke-virtual {p0}, Lcom/haringeymobile/ukweather/ThemedActivity;->getActivityLabelResourceId()I

    move-result v1

    .line 57
    .local v1, "labelRes":I
    if-gtz v1, :cond_1

    const/16 v3, 0x11

    aput-boolean v4, v2, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x12

    aput-boolean v4, v2, v3

    .line 58
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    const/16 v3, 0x13

    aput-boolean v4, v2, v3

    goto :goto_0
.end method
