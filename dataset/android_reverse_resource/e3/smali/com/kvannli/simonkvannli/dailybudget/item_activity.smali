.class public Lcom/kvannli/simonkvannli/dailybudget/item_activity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "item_activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

.field editName:Landroid/widget/EditText;

.field editValue:Landroid/widget/EditText;

.field id:I

.field selected_time_item:Ljava/lang/String;

.field spinner:Landroid/widget/Spinner;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2dc8b0c3671dc84cL    # -1.1592365124828525E88

    const-string v2, "com/kvannli/simonkvannli/dailybudget/item_activity"

    const/16 v3, 0x29

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 13
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
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 82
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 83
    const/16 v1, 0x20

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public DeleteButtonClicked(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->id:I

    invoke-virtual {v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;->deleteIncome(I)V

    const/16 v1, 0x21

    aput-boolean v3, v0, v1

    .line 87
    const v1, 0x7f070056

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x22

    aput-boolean v3, v0, v1

    .line 88
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 92
    const/16 v1, 0x23

    aput-boolean v3, v0, v1

    return-void
.end method

.method public UpdateButtonClicked(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->editName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\r"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/16 v1, 0x15

    aput-boolean v7, v0, v1

    .line 70
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->editValue:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    const-string v4, "."

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x16

    aput-boolean v7, v0, v1

    .line 71
    if-nez v3, :cond_0

    const/16 v1, 0x17

    aput-boolean v7, v0, v1

    .line 72
    :goto_0
    const v1, 0x7f07005c

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1b

    aput-boolean v7, v0, v1

    .line 79
    :goto_1
    const/16 v1, 0x1f

    aput-boolean v7, v0, v1

    return-void

    .line 71
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x18

    aput-boolean v7, v0, v1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    const/16 v1, 0x19

    aput-boolean v7, v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1a

    aput-boolean v7, v0, v1

    goto :goto_0

    .line 74
    :cond_3
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    iget v2, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->id:I

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->selected_time_item:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;->changeRowBasedOnId(ILjava/lang/String;DLjava/lang/String;)V

    const/16 v1, 0x1c

    aput-boolean v7, v0, v1

    .line 76
    const v1, 0x7f07008a

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x1d

    aput-boolean v7, v0, v1

    .line 77
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    const/16 v1, 0x1e

    aput-boolean v7, v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v4

    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v7, v4, v7

    .line 26
    const v3, 0x7f040023

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->setContentView(I)V

    const/4 v3, 0x2

    aput-boolean v7, v4, v3

    .line 27
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v3, 0x3

    aput-boolean v7, v4, v3

    .line 28
    new-instance v3, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    invoke-direct {v3, p0, v5, v5, v7}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    const/4 v3, 0x4

    aput-boolean v7, v4, v3

    .line 30
    const v3, 0x7f0e0082

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->editName:Landroid/widget/EditText;

    const/4 v3, 0x5

    aput-boolean v7, v4, v3

    .line 31
    const v3, 0x7f0e0083

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->editValue:Landroid/widget/EditText;

    const/4 v3, 0x6

    aput-boolean v7, v4, v3

    .line 33
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v5, 0x7

    aput-boolean v7, v4, v5

    .line 34
    const-string v5, "com.example.simonkvannli.dailybudget.MESSAGE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x8

    aput-boolean v7, v4, v5

    .line 36
    const-string v5, " : "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "parts":[Ljava/lang/String;
    aget-object v3, v1, v8

    const/16 v5, 0x9

    aput-boolean v7, v4, v5

    .line 38
    aget-object v5, v1, v7

    const-string v6, " % "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "backParts":[Ljava/lang/String;
    aget-object v2, v0, v8

    .line 40
    .local v2, "value":Ljava/lang/String;
    aget-object v5, v0, v7

    const/16 v6, 0xa

    aput-boolean v7, v4, v6

    .line 42
    const-string v6, " # "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xb

    aput-boolean v7, v4, v6

    .line 43
    aget-object v6, v3, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->id:I

    const/16 v6, 0xc

    aput-boolean v7, v4, v6

    .line 44
    iget-object v6, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->editName:Landroid/widget/EditText;

    aget-object v3, v3, v7

    invoke-virtual {v6, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0xd

    aput-boolean v7, v4, v3

    .line 45
    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->editValue:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iput-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->selected_time_item:Ljava/lang/String;

    const/16 v3, 0xe

    aput-boolean v7, v4, v3

    .line 51
    const v3, 0x7f0e009a

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->spinner:Landroid/widget/Spinner;

    const/16 v3, 0xf

    aput-boolean v7, v4, v3

    .line 53
    const v3, 0x7f0c0003

    const v5, 0x1090008

    invoke-static {p0, v3, v5}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v3

    const/16 v5, 0x10

    aput-boolean v7, v4, v5

    .line 56
    const v5, 0x1090009

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/16 v5, 0x11

    aput-boolean v7, v4, v5

    .line 58
    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v3, 0x12

    aput-boolean v7, v4, v3

    .line 60
    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/16 v3, 0x13

    aput-boolean v7, v4, v3

    .line 62
    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->selected_time_item:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 66
    const/16 v3, 0x14

    aput-boolean v7, v4, v3

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 95
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected time item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x24

    aput-boolean v4, v0, v1

    .line 97
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->selected_time_item:Ljava/lang/String;

    const/16 v1, 0x25

    aput-boolean v4, v0, v1

    .line 100
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070068

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->selected_time_item:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x26

    aput-boolean v4, v0, v1

    .line 101
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 103
    const/16 v1, 0x27

    aput-boolean v4, v0, v1

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/item_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 108
    const/16 v1, 0x28

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
