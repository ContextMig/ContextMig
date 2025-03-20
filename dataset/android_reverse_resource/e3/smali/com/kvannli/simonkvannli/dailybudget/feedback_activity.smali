.class public Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "feedback_activity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5a9d93965d958ec9L    # 3.2033555335478555E128

    const-string v2, "com/kvannli/simonkvannli/dailybudget/feedback_activity"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->$jacocoInit()[Z

    move-result-object v0

    .line 14
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v2, v0, v2

    .line 15
    const v1, 0x7f04001e

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->setContentView(I)V

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 16
    invoke-virtual {p0}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 17
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    return-void
.end method

.method public sendMail(Landroid/view/View;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->$jacocoInit()[Z

    move-result-object v2

    .line 20
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/4 v1, 0x4

    aput-boolean v7, v2, v1

    .line 21
    const v1, 0x7f0e0090

    invoke-virtual {p0, v1}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const/4 v3, 0x5

    aput-boolean v7, v2, v3

    .line 23
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    aput-boolean v7, v2, v3

    .line 24
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-boolean v7, v2, v3

    .line 28
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-boolean v7, v2, v4

    .line 29
    const-string v4, "message/rfc822"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x9

    aput-boolean v7, v2, v4

    .line 30
    const-string v4, "android.intent.extra.EMAIL"

    new-array v5, v7, [Ljava/lang/String;

    const v6, 0x7f07006c

    invoke-virtual {p0, v6}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0xa

    aput-boolean v7, v2, v4

    .line 31
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xb

    aput-boolean v7, v2, v0

    .line 32
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0xc

    const/4 v1, 0x1

    :try_start_0
    aput-boolean v1, v2, v0

    .line 34
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/kvannli/simonkvannli/dailybudget/feedback_activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/16 v0, 0xd

    aput-boolean v7, v2, v0

    .line 38
    :goto_0
    const/16 v0, 0x10

    aput-boolean v7, v2, v0

    return-void

    .line 35
    :catch_0
    move-exception v0

    const/16 v0, 0xe

    aput-boolean v7, v2, v0

    .line 36
    const v0, 0x7f070062

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/16 v0, 0xf

    aput-boolean v7, v2, v0

    goto :goto_0
.end method
