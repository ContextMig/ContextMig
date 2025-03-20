.class public Lcom/kvannli/simonkvannli/dailybudget/InputActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "InputActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field floatDefault:F

.field historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

.field private minus:Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5b5ddcf75819212cL    # -3.193991773400884E-132

    const-string v2, "com/kvannli/simonkvannli/dailybudget/InputActivity"

    const/16 v3, 0x28

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 19
    iput-boolean v2, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->minus:Z

    .line 21
    const/4 v1, 0x0

    iput v1, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->floatDefault:F

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 91
    if-nez p1, :cond_0

    const/16 v1, 0x24

    aput-boolean v3, v0, v1

    .line 92
    :goto_0
    const/16 v1, 0x26

    aput-boolean v3, v0, v1

    .line 94
    :goto_1
    return-object p1

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x25

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x27

    aput-boolean v3, v0, v1

    goto :goto_1
.end method

.method public donePressed(Landroid/view/View;)V
    .locals 10

    .prologue
    const v9, 0x7f070045

    const/4 v8, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoInit()[Z

    move-result-object v4

    .line 49
    const v2, 0x7f0e0063

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/16 v3, 0xd

    aput-boolean v8, v4, v3

    .line 50
    const v3, 0x7f0e0064

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    const/16 v5, 0xe

    aput-boolean v8, v4, v5

    .line 52
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xf

    aput-boolean v8, v4, v6

    .line 54
    if-nez v5, :cond_0

    const/16 v2, 0x10

    aput-boolean v8, v4, v2

    .line 55
    :goto_0
    const v2, 0x7f07005c

    invoke-static {p0, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x12

    aput-boolean v8, v4, v2

    .line 82
    .local v0, "currentMoney":F
    .local v1, "stringNote":Ljava/lang/String;
    :goto_1
    const/16 v2, 0x20

    aput-boolean v8, v4, v2

    return-void

    .line 54
    .end local v0    # "currentMoney":F
    .end local v1    # "stringNote":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v2, 0x11

    aput-boolean v8, v4, v2

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x13

    aput-boolean v8, v4, v6

    .line 60
    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->capitalizeFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "stringNote":Ljava/lang/String;
    const/16 v3, 0x14

    aput-boolean v8, v4, v3

    .line 62
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const/16 v3, 0x15

    aput-boolean v8, v4, v3

    .line 64
    new-instance v3, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    iget-boolean v5, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->minus:Z

    invoke-direct {v3, v1, v6, v7, v5}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;-><init>(Ljava/lang/String;DZ)V

    const/16 v5, 0x16

    aput-boolean v8, v4, v5

    .line 65
    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v5, v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->addHistory(Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;)V

    const/16 v3, 0x17

    aput-boolean v8, v4, v3

    .line 67
    const v3, 0x7f070064

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/16 v5, 0x18

    aput-boolean v8, v4, v5

    .line 68
    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->floatDefault:F

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 70
    .restart local v0    # "currentMoney":F
    iget-boolean v5, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->minus:Z

    if-eqz v5, :cond_2

    const/16 v5, 0x19

    aput-boolean v8, v4, v5

    .line 71
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v0, v2

    const/16 v2, 0x1a

    aput-boolean v8, v4, v2

    .line 75
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x1c

    aput-boolean v8, v4, v3

    .line 76
    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v3, 0x1d

    aput-boolean v8, v4, v3

    .line 77
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v2, 0x1e

    aput-boolean v8, v4, v2

    .line 80
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->finish()V

    const/16 v2, 0x1f

    aput-boolean v8, v4, v2

    goto/16 :goto_1

    .line 73
    :cond_2
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v0, v2

    const/16 v2, 0x1b

    aput-boolean v8, v4, v2

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v3, v1, v3

    .line 26
    const v2, 0x7f040017

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->setContentView(I)V

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    .line 27
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->showMyAd()V

    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    .line 28
    new-instance v2, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-direct {v2, p0, v4, v4, v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    const/4 v2, 0x4

    aput-boolean v3, v1, v2

    .line 31
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 32
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v2, 0x5

    aput-boolean v3, v1, v2

    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->setCorrectImage()V

    .line 36
    const/16 v2, 0x8

    aput-boolean v3, v1, v2

    return-void

    .line 32
    :cond_0
    const/4 v2, 0x6

    aput-boolean v3, v1, v2

    .line 33
    const-string v2, "IS_MINUS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->minus:Z

    const/4 v2, 0x7

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method setCorrectImage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 39
    const v2, 0x7f0e0062

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, "img":Landroid/widget/ImageView;
    iget-boolean v2, p0, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->minus:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    aput-boolean v3, v1, v2

    .line 41
    const v2, 0x7f020058

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v2, 0xa

    aput-boolean v3, v1, v2

    .line 46
    :goto_0
    const/16 v2, 0xc

    aput-boolean v3, v1, v2

    return-void

    .line 43
    :cond_0
    const v2, 0x7f020059

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v2, 0xb

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public showMyAd()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 84
    const v0, 0x7f0e0061

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/InputActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    const/16 v2, 0x21

    aput-boolean v4, v1, v2

    .line 86
    new-instance v2, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v2

    const/16 v3, 0x22

    aput-boolean v4, v1, v3

    .line 87
    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 88
    const/16 v0, 0x23

    aput-boolean v4, v1, v0

    return-void
.end method
