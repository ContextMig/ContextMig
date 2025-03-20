.class public Lcom/kvannli/simonkvannli/dailybudget/income_activity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "income_activity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "com.example.simonkvannli.dailybudget.MESSAGE"


# instance fields
.field public CustomListView:Lcom/kvannli/simonkvannli/dailybudget/income_activity;

.field public CustomListViewValuesArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kvannli/simonkvannli/dailybudget/ListModel;",
            ">;"
        }
    .end annotation
.end field

.field adapter:Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

.field dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

.field editText:Landroid/widget/EditText;

.field list:Landroid/widget/ListView;

.field selected_time_item:Ljava/lang/String;

.field spinner:Landroid/widget/Spinner;

.field textView:Landroid/widget/TextView;

.field total_income_view:Landroid/widget/TextView;

.field valueText:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x58a1e610c5ee469dL    # -4.662803056702318E-119

    const-string v2, "com/kvannli/simonkvannli/dailybudget/income_activity"

    const/16 v3, 0x79

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListView:Lcom/kvannli/simonkvannli/dailybudget/income_activity;

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListViewValuesArr:Ljava/util/ArrayList;

    aput-boolean v2, v0, v2

    return-void
.end method


# virtual methods
.method public AddButtonClicked(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    aput-boolean v6, v0, v2

    .line 210
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->valueText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e

    aput-boolean v6, v0, v3

    .line 211
    if-nez v1, :cond_0

    const/16 v1, 0x3f

    aput-boolean v6, v0, v1

    .line 212
    :goto_0
    const v1, 0x7f07005c

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/16 v1, 0x43

    aput-boolean v6, v0, v1

    .line 220
    :goto_1
    const/16 v1, 0x48

    aput-boolean v6, v0, v1

    return-void

    .line 211
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x40

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/16 v1, 0x41

    aput-boolean v6, v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x42

    aput-boolean v6, v0, v1

    goto :goto_0

    .line 214
    :cond_3
    new-instance v1, Lcom/kvannli/simonkvannli/dailybudget/Incomes;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->valueText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->selected_time_item:Ljava/lang/String;

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/kvannli/simonkvannli/dailybudget/Incomes;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const/16 v2, 0x44

    aput-boolean v6, v0, v2

    .line 215
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    invoke-virtual {v2, v1}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;->addIncome(Lcom/kvannli/simonkvannli/dailybudget/Incomes;)V

    const/16 v1, 0x45

    aput-boolean v6, v0, v1

    .line 217
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->printEditableDatabase()V

    const/16 v1, 0x46

    aput-boolean v6, v0, v1

    .line 218
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->clearInputFields()V

    const/16 v1, 0x47

    aput-boolean v6, v0, v1

    goto :goto_1
.end method

.method public clearInputFields()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->editText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x67

    aput-boolean v3, v0, v1

    .line 274
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->valueText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const/16 v1, 0x68

    aput-boolean v3, v0, v1

    return-void
.end method

.method public correctFormatOfFloat(F)Ljava/lang/String;
    .locals 8

    .prologue
    const v7, 0x7f070088

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v1

    .line 279
    const v2, 0x7f070064

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v3, 0x69

    aput-boolean v5, v1, v3

    .line 280
    const v3, 0x7f07005d

    invoke-virtual {p0, v3}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6a

    aput-boolean v5, v1, v3

    .line 281
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x6b

    aput-boolean v5, v1, v3

    .line 282
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "myFormat":Ljava/lang/String;
    if-nez v2, :cond_0

    const/16 v2, 0x6c

    aput-boolean v5, v1, v2

    .line 284
    const v2, 0x7f070061

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6d

    aput-boolean v5, v1, v2

    .line 293
    :goto_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x73

    aput-boolean v5, v1, v3

    .line 294
    const/16 v3, 0x2c

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x74

    aput-boolean v5, v1, v3

    return-object v2

    .line 285
    :cond_0
    if-ne v2, v5, :cond_1

    const/16 v2, 0x6e

    aput-boolean v5, v1, v2

    .line 286
    const v2, 0x7f070063

    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6f

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 287
    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v2, 0x70

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_2
    const/16 v2, 0x71

    aput-boolean v5, v1, v2

    .line 288
    invoke-virtual {p0, v7}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x72

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method public daysThisMonth()I
    .locals 4

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 268
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    const/16 v2, 0x66

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v1

    .line 47
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    aput-boolean v5, v1, v0

    .line 48
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->setContentView(I)V

    const/4 v0, 0x3

    aput-boolean v5, v1, v0

    .line 49
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const/4 v0, 0x4

    aput-boolean v5, v1, v0

    .line 51
    const v0, 0x7f0e0070

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->editText:Landroid/widget/EditText;

    const/4 v0, 0x5

    aput-boolean v5, v1, v0

    .line 53
    const v0, 0x7f0e0088

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->valueText:Landroid/widget/EditText;

    const/4 v0, 0x6

    aput-boolean v5, v1, v0

    .line 54
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    invoke-direct {v0, p0, v2, v2, v5}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    const/4 v0, 0x7

    aput-boolean v5, v1, v0

    .line 55
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->total_income_view:Landroid/widget/TextView;

    .line 59
    iput-object p0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListView:Lcom/kvannli/simonkvannli/dailybudget/income_activity;

    const/16 v0, 0x8

    aput-boolean v5, v1, v0

    .line 62
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->setListData()V

    const/16 v0, 0x9

    aput-boolean v5, v1, v0

    .line 64
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v0, 0xa

    aput-boolean v5, v1, v0

    .line 65
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->list:Landroid/widget/ListView;

    const/16 v0, 0xb

    aput-boolean v5, v1, v0

    .line 68
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListView:Lcom/kvannli/simonkvannli/dailybudget/income_activity;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListViewValuesArr:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v2}, Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->adapter:Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

    const/16 v0, 0xc

    aput-boolean v5, v1, v0

    .line 69
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->adapter:Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    .line 75
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->printEditableDatabase()V

    const/16 v0, 0xe

    aput-boolean v5, v1, v0

    .line 79
    const v0, 0x7f0e0097

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->spinner:Landroid/widget/Spinner;

    const/16 v0, 0xf

    aput-boolean v5, v1, v0

    .line 81
    const v0, 0x7f0c0003

    const v2, 0x1090008

    invoke-static {p0, v0, v2}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    const/16 v2, 0x10

    aput-boolean v5, v1, v2

    .line 84
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/16 v2, 0x11

    aput-boolean v5, v1, v2

    .line 86
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/16 v0, 0x12

    aput-boolean v5, v1, v0

    .line 88
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    const/16 v0, 0x13

    aput-boolean v5, v1, v0

    return-void
.end method

.method public onItemClick(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v1

    .line 161
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListViewValuesArr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    const/16 v2, 0x30

    aput-boolean v4, v1, v2

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " % "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->getInterval()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x31

    aput-boolean v4, v1, v2

    .line 166
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/kvannli/simonkvannli/dailybudget/item_activity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x32

    aput-boolean v4, v1, v3

    .line 167
    const-string v3, "com.example.simonkvannli.dailybudget.MESSAGE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x33

    aput-boolean v4, v1, v0

    .line 169
    invoke-virtual {p0, v2}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->startActivity(Landroid/content/Intent;)V

    .line 173
    const/16 v0, 0x34

    aput-boolean v4, v1, v0

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

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 304
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

    const/16 v1, 0x75

    aput-boolean v4, v0, v1

    .line 306
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->selected_time_item:Ljava/lang/String;

    const/16 v1, 0x76

    aput-boolean v4, v0, v1

    .line 310
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->spinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 312
    const/16 v1, 0x77

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
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 317
    const/16 v1, 0x78

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 179
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onResume()V

    const/16 v1, 0x35

    aput-boolean v2, v0, v1

    .line 181
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->printEditableDatabase()V

    .line 183
    const/16 v1, 0x36

    aput-boolean v2, v0, v1

    return-void
.end method

.method public printEditableDatabase()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v1

    .line 189
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->updateDailyMoney()V

    const/16 v0, 0x37

    aput-boolean v5, v1, v0

    .line 190
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->setListData()V

    const/16 v0, 0x38

    aput-boolean v5, v1, v0

    .line 192
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/16 v0, 0x39

    aput-boolean v5, v1, v0

    .line 193
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->list:Landroid/widget/ListView;

    const/16 v0, 0x3a

    aput-boolean v5, v1, v0

    .line 196
    new-instance v0, Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

    iget-object v3, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListView:Lcom/kvannli/simonkvannli/dailybudget/income_activity;

    iget-object v4, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListViewValuesArr:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v4, v2}, Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->adapter:Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

    const/16 v0, 0x3b

    aput-boolean v5, v1, v0

    .line 197
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->adapter:Lcom/kvannli/simonkvannli/dailybudget/CustomAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    const/16 v0, 0x3c

    aput-boolean v5, v1, v0

    return-void
.end method

.method public setListData()V
    .locals 14

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v7

    .line 98
    iget-object v6, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    invoke-virtual {v6}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;->databaseToString()Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x14

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 99
    iget-object v8, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListViewValuesArr:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    const/16 v8, 0x15

    const/4 v9, 0x1

    aput-boolean v9, v7, v8

    .line 103
    if-nez v6, :cond_0

    const/16 v6, 0x16

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    .line 157
    .local v3, "listWithID":[Ljava/lang/String;
    :goto_0
    const/16 v6, 0x2f

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    return-void

    .line 103
    .end local v3    # "listWithID":[Ljava/lang/String;
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v6, 0x17

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_0

    .line 119
    :cond_1
    const-string v8, "\\r?\\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3    # "listWithID":[Ljava/lang/String;
    array-length v8, v3

    const/4 v6, 0x0

    const/16 v9, 0x18

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    :goto_1
    if-lt v6, v8, :cond_2

    const/16 v6, 0x19

    const/4 v8, 0x1

    aput-boolean v8, v7, v6

    goto :goto_0

    :cond_2
    aget-object v9, v3, v6

    const/16 v10, 0x1a

    const/4 v11, 0x1

    aput-boolean v11, v7, v10

    .line 121
    new-instance v10, Lcom/kvannli/simonkvannli/dailybudget/ListModel;

    invoke-direct {v10}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;-><init>()V

    const/16 v11, 0x1b

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 123
    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/16 v11, 0x1c

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 124
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const-string v12, " # "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x1d

    const/4 v13, 0x1

    aput-boolean v13, v7, v12

    .line 125
    const/4 v12, 0x1

    aget-object v9, v9, v12

    const-string v12, " % "

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "lastParts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v11, v9

    .line 127
    .local v0, "id":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v4, v11, v9

    .line 128
    .local v4, "name":Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v5, v2, v9

    .line 129
    .local v5, "value":Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v2, v9

    const/16 v11, 0x1e

    const/4 v12, 0x1

    aput-boolean v12, v7, v11

    .line 131
    const v11, 0x7f070070

    invoke-virtual {p0, v11}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v9, 0x1f

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 132
    const v9, 0x7f070070

    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "interval":Ljava/lang/String;
    const/16 v9, 0x20

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 146
    :goto_2
    invoke-virtual {v10, v4}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->setName(Ljava/lang/String;)V

    const/16 v9, 0x28

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 147
    const-string v9, "wat"

    invoke-virtual {v10, v9}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->setImage(Ljava/lang/String;)V

    const/16 v9, 0x29

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 148
    invoke-virtual {v10, v5}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->setValue(Ljava/lang/String;)V

    const/16 v9, 0x2a

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 149
    invoke-virtual {v10, v0}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->setId(Ljava/lang/String;)V

    const/16 v9, 0x2b

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 150
    invoke-virtual {v10, v1}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->setInterval(Ljava/lang/String;)V

    const/16 v9, 0x2c

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "  "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/kvannli/simonkvannli/dailybudget/ListModel;->setShow(Ljava/lang/String;)V

    const/16 v9, 0x2d

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 152
    iget-object v9, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->CustomListViewValuesArr:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v6, v6, 0x1

    const/16 v9, 0x2e

    const/4 v10, 0x1

    aput-boolean v10, v7, v9

    goto/16 :goto_1

    .line 133
    .end local v1    # "interval":Ljava/lang/String;
    :cond_3
    const v11, 0x7f07006d

    invoke-virtual {p0, v11}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v9, 0x21

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 134
    const v9, 0x7f07006d

    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "interval":Ljava/lang/String;
    const/16 v9, 0x22

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    goto :goto_2

    .line 135
    .end local v1    # "interval":Ljava/lang/String;
    :cond_4
    const v11, 0x7f070071

    invoke-virtual {p0, v11}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v9, 0x23

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 136
    const v9, 0x7f070071

    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "interval":Ljava/lang/String;
    const/16 v9, 0x24

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    goto/16 :goto_2

    .line 137
    .end local v1    # "interval":Ljava/lang/String;
    :cond_5
    const v11, 0x7f07006e

    invoke-virtual {p0, v11}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x25

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    .line 138
    const v9, 0x7f07006e

    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "interval":Ljava/lang/String;
    const/16 v9, 0x26

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    goto/16 :goto_2

    .line 140
    .end local v1    # "interval":Ljava/lang/String;
    :cond_6
    const v9, 0x7f07006f

    invoke-virtual {p0, v9}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "interval":Ljava/lang/String;
    const/16 v9, 0x27

    const/4 v11, 0x1

    aput-boolean v11, v7, v9

    goto/16 :goto_2
.end method

.method public updateDailyMoney()V
    .locals 13

    .prologue
    const v12, 0x7f07006f

    const v11, 0x7f070064

    const v10, 0x7f070049

    const/4 v2, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->$jacocoInit()[Z

    move-result-object v3

    .line 225
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->dbHandler:Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;

    invoke-virtual {v1}, Lcom/kvannli/simonkvannli/dailybudget/MyDBHandler;->databaseValuesAndIntervalToString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\r?\\n"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0x49

    aput-boolean v9, v3, v1

    .line 229
    aget-object v1, v4, v2

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "total":F
    array-length v5, v4

    const/16 v1, 0x4a

    aput-boolean v9, v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_5

    aget-object v6, v4, v1

    const/16 v7, 0x4b

    aput-boolean v9, v3, v7

    .line 232
    const-string v7, " % "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x4c

    aput-boolean v9, v3, v7

    .line 233
    aget-object v7, v6, v9

    invoke-virtual {p0, v12}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x4d

    aput-boolean v9, v3, v7

    .line 234
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v0, v6

    const/16 v6, 0x4e

    aput-boolean v9, v3, v6

    .line 231
    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x58

    aput-boolean v9, v3, v6

    goto :goto_0

    .line 235
    :cond_0
    aget-object v7, v6, v9

    const v8, 0x7f07006e

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x4f

    aput-boolean v9, v3, v7

    .line 236
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->daysThisMonth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    const/16 v6, 0x50

    aput-boolean v9, v3, v6

    goto :goto_1

    .line 237
    :cond_1
    aget-object v7, v6, v9

    const v8, 0x7f070071

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x51

    aput-boolean v9, v3, v7

    .line 238
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    div-float/2addr v6, v7

    add-float/2addr v0, v6

    const/16 v6, 0x52

    aput-boolean v9, v3, v6

    goto :goto_1

    .line 239
    :cond_2
    aget-object v7, v6, v9

    const v8, 0x7f070070

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x53

    aput-boolean v9, v3, v7

    .line 240
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    const/16 v6, 0x54

    aput-boolean v9, v3, v6

    goto :goto_1

    .line 241
    :cond_3
    aget-object v7, v6, v9

    const v8, 0x7f07006d

    invoke-virtual {p0, v8}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v6, 0x55

    aput-boolean v9, v3, v6

    goto/16 :goto_1

    :cond_4
    const/16 v7, 0x56

    aput-boolean v9, v3, v7

    .line 242
    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v0, v6

    const/16 v6, 0x57

    aput-boolean v9, v3, v6

    goto/16 :goto_1

    .line 246
    :cond_5
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->daysThisMonth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    const/16 v4, 0x59

    aput-boolean v9, v3, v4

    .line 248
    invoke-virtual {p0, v11}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v2}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/16 v4, 0x5a

    aput-boolean v9, v3, v4

    .line 250
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v4, 0x5b

    aput-boolean v9, v3, v4

    .line 251
    invoke-virtual {p0, v10}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v4, 0x5c

    aput-boolean v9, v3, v4

    .line 252
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v2, 0x5d

    aput-boolean v9, v3, v2

    .line 253
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOTAL INCOME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n Every day: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x5e

    aput-boolean v9, v3, v1

    .line 254
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->total_income_view:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->correctFormatOfFloat(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v12}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/16 v1, 0x5f

    aput-boolean v9, v3, v1

    .line 265
    :goto_2
    const/16 v1, 0x65

    aput-boolean v9, v3, v1

    return-void

    .line 257
    .end local v0    # "total":F
    :cond_6
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Database is empty."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v1, 0x60

    aput-boolean v9, v3, v1

    .line 258
    invoke-virtual {p0, v11}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/16 v2, 0x61

    aput-boolean v9, v3, v2

    .line 260
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/16 v2, 0x62

    aput-boolean v9, v3, v2

    .line 261
    invoke-virtual {p0, v10}, Lcom/kvannli/simonkvannli/dailybudget/income_activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x63

    aput-boolean v9, v3, v2

    .line 262
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v1, 0x64

    aput-boolean v9, v3, v1

    goto :goto_2
.end method
