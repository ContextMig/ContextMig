.class public Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "updateHistoryActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field editName:Landroid/widget/EditText;

.field editValue:Landroid/widget/EditText;

.field historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

.field historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4133ec776463cb33L    # -3.346956160116439E-6

    const-string v2, "com/kvannli/simonkvannli/dailybudget/updateHistoryActivity"

    const/16 v3, 0x26

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 11
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public CancelButtonClicked(Landroid/view/View;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 67
    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public DeleteButtonClicked(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_value()D

    move-result-wide v2

    const/16 v1, 0x15

    aput-boolean v4, v0, v1

    .line 57
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->is_minus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    aput-boolean v4, v0, v1

    .line 58
    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->addTotalMoney(D)V

    const/16 v1, 0x17

    aput-boolean v4, v0, v1

    .line 62
    :goto_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_id()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->deleteHistory(I)V

    const/16 v1, 0x19

    aput-boolean v4, v0, v1

    .line 63
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 64
    const/16 v1, 0x1a

    aput-boolean v4, v0, v1

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->subtractTotalMoney(D)V

    const/16 v1, 0x18

    aput-boolean v4, v0, v1

    goto :goto_0
.end method

.method public UpdateButtonClicked(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_value()D

    move-result-wide v4

    sub-double/2addr v2, v4

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    .line 45
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->is_minus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    .line 46
    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->subtractTotalMoney(D)V

    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_id()I

    move-result v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editValue:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->changeRowBasedOnId(ILjava/lang/String;D)V

    const/16 v1, 0x13

    aput-boolean v6, v0, v1

    .line 52
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 54
    const/16 v1, 0x14

    aput-boolean v6, v0, v1

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->addTotalMoney(D)V

    const/16 v1, 0x12

    aput-boolean v6, v0, v1

    goto :goto_0
.end method

.method public addTotalMoney(D)V
    .locals 9

    .prologue
    const v7, 0x7f070045

    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 71
    const v2, 0x7f070064

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x1c

    aput-boolean v6, v1, v3

    .line 72
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 73
    .local v0, "currentMoney":F
    float-to-double v4, v0

    add-double/2addr v4, p1

    double-to-float v0, v4

    const/16 v3, 0x1d

    aput-boolean v6, v1, v3

    .line 74
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x1e

    aput-boolean v6, v1, v3

    .line 75
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v3, 0x1f

    aput-boolean v6, v1, v3

    .line 76
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    const/16 v2, 0x20

    aput-boolean v6, v1, v2

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 20
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v1, v6

    .line 21
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->setContentView(I)V

    const/4 v0, 0x2

    aput-boolean v6, v1, v0

    .line 23
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x3

    aput-boolean v6, v1, v0

    .line 24
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-direct {v0, p0, v2, v2, v6}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    const/4 v0, 0x4

    aput-boolean v6, v1, v0

    .line 26
    const v0, 0x7f0e0082

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editName:Landroid/widget/EditText;

    const/4 v0, 0x5

    aput-boolean v6, v1, v0

    .line 27
    const v0, 0x7f0e0083

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editValue:Landroid/widget/EditText;

    const/4 v0, 0x6

    aput-boolean v6, v1, v0

    .line 29
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x7

    aput-boolean v6, v1, v2

    .line 30
    const-string v2, "com.example.simonkvannli.dailybudget.HISTORYMESSAGE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x8

    aput-boolean v6, v1, v2

    .line 31
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE RECIEVED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 33
    if-ne v0, v5, :cond_0

    const/16 v0, 0x9

    aput-boolean v6, v1, v0

    .line 40
    :goto_0
    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    return-void

    .line 33
    :cond_0
    const/16 v2, 0xa

    aput-boolean v6, v1, v2

    .line 34
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyDBHandler:Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;

    invoke-virtual {v2, v0}, Lcom/kvannli/simonkvannli/dailybudget/HistoryDBHandler;->getHistoryObject(I)Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    move-result-object v0

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    .line 36
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v2}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_historyNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xc

    aput-boolean v6, v1, v0

    .line 37
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->editValue:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->historyObject:Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;

    invoke-virtual {v3}, Lcom/kvannli/simonkvannli/dailybudget/HistoryObject;->get_value()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0xd

    aput-boolean v6, v1, v0

    goto :goto_0
.end method

.method public subtractTotalMoney(D)V
    .locals 9

    .prologue
    const v7, 0x7f070045

    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 80
    const v2, 0x7f070064

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x21

    aput-boolean v6, v1, v3

    .line 81
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 82
    .local v0, "currentMoney":F
    float-to-double v4, v0

    sub-double/2addr v4, p1

    double-to-float v0, v4

    const/16 v3, 0x22

    aput-boolean v6, v1, v3

    .line 83
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x23

    aput-boolean v6, v1, v3

    .line 84
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/updateHistoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v3, 0x24

    aput-boolean v6, v1, v3

    .line 85
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    const/16 v2, 0x25

    aput-boolean v6, v1, v2

    return-void
.end method
