.class Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;
.super Ljava/lang/Object;
.source "SavingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->initializeVariables()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x414a6eb3193ac0ceL    # -1.2855279250718451E-6

    const-string v2, "com/kvannli/simonkvannli/dailybudget/SavingsActivity$2"

    const/16 v3, 0x12

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->$jacocoInit()[Z

    move-result-object v1

    .line 94
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    const/16 v0, 0xb

    aput-boolean v6, v1, v0

    .line 112
    :goto_1
    const/16 v0, 0xf

    aput-boolean v6, v1, v0

    return-void

    .line 94
    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    :try_start_1
    aput-boolean v2, v1, v0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 97
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->num:D

    .line 98
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iget-wide v2, v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->num:D

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x4

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 99
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-static {v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->access$000(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "100"

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v0, 0x5

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 103
    :goto_2
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-static {v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->access$100(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iget-wide v2, v2, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->num:D

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    const/16 v0, 0x9

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 104
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iget-wide v2, v2, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->num:D

    invoke-virtual {v0, v2, v3}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->updateAllSavings(D)V

    const/16 v0, 0xa

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    const/16 v2, 0xc

    aput-boolean v6, v1, v2

    .line 107
    iget-object v2, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-static {v2}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->access$000(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "0"

    sget-object v4, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/16 v2, 0xd

    aput-boolean v6, v1, v2

    .line 108
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const/16 v0, 0xe

    aput-boolean v6, v1, v0

    goto :goto_1

    .line 100
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    iget-wide v2, v0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->num:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-ltz v0, :cond_2

    const/4 v0, 0x6

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x7

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 101
    iget-object v0, p0, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->this$0:Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;

    invoke-static {v0}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;->access$000(Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v2, "0"

    sget-object v3, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/16 v0, 0x8

    const/4 v2, 0x1

    aput-boolean v2, v1, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 117
    const/16 v1, 0x10

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/SavingsActivity$2;->$jacocoInit()[Z

    move-result-object v0

    .line 123
    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method
