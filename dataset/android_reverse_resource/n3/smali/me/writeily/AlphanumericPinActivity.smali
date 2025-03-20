.class public Lme/writeily/AlphanumericPinActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "AlphanumericPinActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private isSettingUp:Z

.field private pin:Ljava/lang/String;

.field private pinView:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/AlphanumericPinActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5d23d848cbe7236cL    # -9.235485206467785E-141

    const-string v2, "me/writeily/AlphanumericPinActivity"

    const/16 v3, 0x22

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/AlphanumericPinActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 27
    iput-boolean v2, p0, Lme/writeily/AlphanumericPinActivity;->isSettingUp:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lme/writeily/AlphanumericPinActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 20
    invoke-direct {p0}, Lme/writeily/AlphanumericPinActivity;->checkPin()V

    const/16 v1, 0x21

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private checkPin()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 76
    iget-object v2, p0, Lme/writeily/AlphanumericPinActivity;->pinView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "enteredPin":Ljava/lang/String;
    iget-boolean v2, p0, Lme/writeily/AlphanumericPinActivity;->isSettingUp:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    aput-boolean v5, v1, v2

    .line 79
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x12

    aput-boolean v5, v1, v3

    .line 80
    const v3, 0x7f0600aa

    invoke-virtual {p0, v3}, Lme/writeily/AlphanumericPinActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0600a2

    invoke-virtual {p0, v4}, Lme/writeily/AlphanumericPinActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v3, 0x13

    aput-boolean v5, v1, v3

    .line 81
    const-string v3, "user_pin"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v2, 0x14

    aput-boolean v5, v1, v2

    .line 83
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lme/writeily/AlphanumericPinActivity;->setResult(I)V

    const/16 v2, 0x15

    aput-boolean v5, v1, v2

    .line 84
    invoke-virtual {p0}, Lme/writeily/AlphanumericPinActivity;->finish()V

    .line 85
    const/16 v2, 0x16

    aput-boolean v5, v1, v2

    .line 94
    :goto_0
    const/16 v2, 0x1b

    aput-boolean v5, v1, v2

    return-void

    .line 87
    :cond_0
    iget-object v2, p0, Lme/writeily/AlphanumericPinActivity;->pin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    aput-boolean v5, v1, v2

    .line 88
    invoke-direct {p0}, Lme/writeily/AlphanumericPinActivity;->startMain()V

    const/16 v2, 0x18

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lme/writeily/AlphanumericPinActivity;->context:Landroid/content/Context;

    const v3, 0x7f06003d

    invoke-virtual {p0, v3}, Lme/writeily/AlphanumericPinActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x19

    aput-boolean v5, v1, v2

    .line 91
    invoke-direct {p0}, Lme/writeily/AlphanumericPinActivity;->resetPin()V

    const/16 v2, 0x1a

    aput-boolean v5, v1, v2

    goto :goto_0
.end method

.method private resetPin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 97
    iget-object v1, p0, Lme/writeily/AlphanumericPinActivity;->pinView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    .line 98
    iget-object v1, p0, Lme/writeily/AlphanumericPinActivity;->pinView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 99
    const/16 v1, 0x1d

    aput-boolean v3, v0, v1

    return-void
.end method

.method private startMain()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 105
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/writeily/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x1e

    aput-boolean v3, v0, v2

    .line 106
    invoke-virtual {p0}, Lme/writeily/AlphanumericPinActivity;->finish()V

    const/16 v2, 0x1f

    aput-boolean v3, v0, v2

    .line 107
    invoke-virtual {p0, v1}, Lme/writeily/AlphanumericPinActivity;->startActivity(Landroid/content/Intent;)V

    .line 108
    const/16 v1, 0x20

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 63
    iget-boolean v1, p0, Lme/writeily/AlphanumericPinActivity;->isSettingUp:Z

    if-nez v1, :cond_0

    const/16 v1, 0xd

    aput-boolean v2, v0, v1

    .line 67
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 68
    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    return-void

    .line 63
    :cond_0
    const/16 v1, 0xe

    aput-boolean v2, v0, v1

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/writeily/AlphanumericPinActivity;->setResult(I)V

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/AlphanumericPinActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 31
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v2, v6

    .line 33
    invoke-virtual {p0}, Lme/writeily/AlphanumericPinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    .line 35
    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lme/writeily/AlphanumericPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 36
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-nez v0, :cond_0

    const/4 v3, 0x3

    aput-boolean v6, v2, v3

    .line 41
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "user_pin"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lme/writeily/AlphanumericPinActivity;->pin:Ljava/lang/String;

    const/4 v3, 0x6

    aput-boolean v6, v2, v3

    .line 43
    const-string v3, "set_pin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    .line 47
    :goto_1
    const v1, 0x7f03001b

    invoke-virtual {p0, v1}, Lme/writeily/AlphanumericPinActivity;->setContentView(I)V

    const/16 v1, 0x9

    aput-boolean v6, v2, v1

    .line 48
    invoke-virtual {p0}, Lme/writeily/AlphanumericPinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/AlphanumericPinActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    aput-boolean v6, v2, v1

    .line 51
    const v1, 0x7f0c005e

    invoke-virtual {p0, v1}, Lme/writeily/AlphanumericPinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/AlphanumericPinActivity;->pinView:Landroid/widget/EditText;

    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    .line 52
    iget-object v1, p0, Lme/writeily/AlphanumericPinActivity;->pinView:Landroid/widget/EditText;

    new-instance v3, Lme/writeily/AlphanumericPinActivity$1;

    invoke-direct {v3, p0}, Lme/writeily/AlphanumericPinActivity$1;-><init>(Lme/writeily/AlphanumericPinActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 59
    const/16 v1, 0xc

    aput-boolean v6, v2, v1

    return-void

    .line 36
    :cond_0
    const/4 v3, 0x4

    aput-boolean v6, v2, v3

    .line 37
    invoke-virtual {p0, v0}, Lme/writeily/AlphanumericPinActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    goto :goto_0

    .line 44
    :cond_1
    iput-boolean v6, p0, Lme/writeily/AlphanumericPinActivity;->isSettingUp:Z

    const/16 v1, 0x8

    aput-boolean v6, v2, v1

    goto :goto_1
.end method
