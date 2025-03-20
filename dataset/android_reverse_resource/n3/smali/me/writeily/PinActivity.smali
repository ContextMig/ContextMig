.class public Lme/writeily/PinActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "PinActivity.java"


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private context:Landroid/content/Context;

.field private isSettingUp:Z

.field private pin:Ljava/lang/String;

.field private pin1:Landroid/widget/EditText;

.field private pin2:Landroid/widget/EditText;

.field private pin3:Landroid/widget/EditText;

.field private pin4:Landroid/widget/EditText;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/PinActivity;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x47eea8fff8f6f425L    # -1.2739305540747817E-38

    const-string v2, "me/writeily/PinActivity"

    const/16 v3, 0x39

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/PinActivity;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    .line 31
    iput-boolean v2, p0, Lme/writeily/PinActivity;->isSettingUp:Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    return-void
.end method

.method static synthetic access$000(Lme/writeily/PinActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    const/16 v2, 0x34

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$100(Lme/writeily/PinActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lme/writeily/PinActivity;->pin2:Landroid/widget/EditText;

    const/16 v2, 0x35

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lme/writeily/PinActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lme/writeily/PinActivity;->pin3:Landroid/widget/EditText;

    const/16 v2, 0x36

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$300(Lme/writeily/PinActivity;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    iget-object v1, p0, Lme/writeily/PinActivity;->pin4:Landroid/widget/EditText;

    const/16 v2, 0x37

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$400(Lme/writeily/PinActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 21
    invoke-direct {p0}, Lme/writeily/PinActivity;->checkPin()V

    const/16 v1, 0x38

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private attachPinKeyListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    iget-object v1, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$1;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$1;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v1, 0x15

    aput-boolean v3, v0, v1

    .line 83
    iget-object v1, p0, Lme/writeily/PinActivity;->pin2:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$2;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$2;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v1, 0x16

    aput-boolean v3, v0, v1

    .line 92
    iget-object v1, p0, Lme/writeily/PinActivity;->pin3:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$3;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$3;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/16 v1, 0x17

    aput-boolean v3, v0, v1

    .line 101
    iget-object v1, p0, Lme/writeily/PinActivity;->pin4:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$4;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$4;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    const/16 v1, 0x18

    aput-boolean v3, v0, v1

    return-void
.end method

.method private attachPinListeners()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 113
    iget-object v1, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$5;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$5;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v1, 0x19

    aput-boolean v3, v0, v1

    .line 131
    iget-object v1, p0, Lme/writeily/PinActivity;->pin2:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$6;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$6;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v1, 0x1a

    aput-boolean v3, v0, v1

    .line 149
    iget-object v1, p0, Lme/writeily/PinActivity;->pin3:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$7;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$7;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v1, 0x1b

    aput-boolean v3, v0, v1

    .line 167
    iget-object v1, p0, Lme/writeily/PinActivity;->pin4:Landroid/widget/EditText;

    new-instance v2, Lme/writeily/PinActivity$8;

    invoke-direct {v2, p0}, Lme/writeily/PinActivity$8;-><init>(Lme/writeily/PinActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    const/16 v1, 0x1c

    aput-boolean v3, v0, v1

    return-void
.end method

.method private checkPin()V
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v1

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/PinActivity;->pin2:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/PinActivity;->pin3:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lme/writeily/PinActivity;->pin4:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "enteredPin":Ljava/lang/String;
    iget-boolean v2, p0, Lme/writeily/PinActivity;->isSettingUp:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x1d

    aput-boolean v5, v1, v2

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_0

    const/16 v2, 0x1e

    aput-boolean v5, v1, v2

    .line 211
    :goto_0
    const/16 v2, 0x2b

    aput-boolean v5, v1, v2

    return-void

    .line 193
    :cond_0
    const/16 v2, 0x1f

    aput-boolean v5, v1, v2

    .line 194
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x20

    aput-boolean v5, v1, v3

    .line 195
    const-string v3, "user_pin"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 v3, 0x21

    aput-boolean v5, v1, v3

    .line 196
    const v3, 0x7f0600aa

    invoke-virtual {p0, v3}, Lme/writeily/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0600ad

    invoke-virtual {p0, v4}, Lme/writeily/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const/16 v2, 0x22

    aput-boolean v5, v1, v2

    .line 197
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lme/writeily/PinActivity;->setResult(I)V

    const/16 v2, 0x23

    aput-boolean v5, v1, v2

    .line 198
    invoke-virtual {p0}, Lme/writeily/PinActivity;->finish()V

    .line 199
    const/16 v2, 0x24

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 202
    :cond_1
    iget-object v2, p0, Lme/writeily/PinActivity;->pin:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x25

    aput-boolean v5, v1, v2

    .line 203
    invoke-direct {p0}, Lme/writeily/PinActivity;->startMain()V

    const/16 v2, 0x26

    aput-boolean v5, v1, v2

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_3

    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    goto :goto_0

    :cond_3
    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    .line 206
    iget-object v2, p0, Lme/writeily/PinActivity;->context:Landroid/content/Context;

    const v3, 0x7f06003d

    invoke-virtual {p0, v3}, Lme/writeily/PinActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/16 v2, 0x29

    aput-boolean v5, v1, v2

    .line 207
    invoke-direct {p0}, Lme/writeily/PinActivity;->resetPin()V

    const/16 v2, 0x2a

    aput-boolean v5, v1, v2

    goto/16 :goto_0
.end method

.method private resetPin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 214
    iget-object v1, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2c

    aput-boolean v3, v0, v1

    .line 215
    iget-object v1, p0, Lme/writeily/PinActivity;->pin2:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2d

    aput-boolean v3, v0, v1

    .line 216
    iget-object v1, p0, Lme/writeily/PinActivity;->pin3:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2e

    aput-boolean v3, v0, v1

    .line 217
    iget-object v1, p0, Lme/writeily/PinActivity;->pin4:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2f

    aput-boolean v3, v0, v1

    .line 218
    iget-object v1, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 219
    const/16 v1, 0x30

    aput-boolean v3, v0, v1

    return-void
.end method

.method private startMain()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 225
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lme/writeily/MainActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v2, 0x31

    aput-boolean v3, v0, v2

    .line 226
    invoke-virtual {p0}, Lme/writeily/PinActivity;->finish()V

    const/16 v2, 0x32

    aput-boolean v3, v0, v2

    .line 227
    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->startActivity(Landroid/content/Intent;)V

    .line 228
    const/16 v1, 0x33

    aput-boolean v3, v0, v1

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v0

    .line 66
    iget-boolean v1, p0, Lme/writeily/PinActivity;->isSettingUp:Z

    if-nez v1, :cond_0

    const/16 v1, 0x11

    aput-boolean v2, v0, v1

    .line 70
    :goto_0
    invoke-super {p0}, Landroid/support/v7/app/ActionBarActivity;->onBackPressed()V

    .line 71
    const/16 v1, 0x14

    aput-boolean v2, v0, v1

    return-void

    .line 66
    :cond_0
    const/16 v1, 0x12

    aput-boolean v2, v0, v1

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->setResult(I)V

    const/16 v1, 0x13

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    invoke-static {}, Lme/writeily/PinActivity;->$jacocoInit()[Z

    move-result-object v2

    .line 35
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    aput-boolean v6, v2, v6

    .line 37
    invoke-virtual {p0}, Lme/writeily/PinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    aput-boolean v6, v2, v3

    .line 39
    const v3, 0x7f0c005d

    invoke-virtual {p0, v3}, Lme/writeily/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 40
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    if-nez v0, :cond_0

    const/4 v3, 0x3

    aput-boolean v6, v2, v3

    .line 45
    :goto_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "user_pin"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lme/writeily/PinActivity;->pin:Ljava/lang/String;

    const/4 v3, 0x6

    aput-boolean v6, v2, v3

    .line 47
    const-string v3, "set_pin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x7

    aput-boolean v6, v2, v1

    .line 51
    :goto_1
    const v1, 0x7f03001e

    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->setContentView(I)V

    const/16 v1, 0x9

    aput-boolean v6, v2, v1

    .line 52
    invoke-virtual {p0}, Lme/writeily/PinActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lme/writeily/PinActivity;->context:Landroid/content/Context;

    const/16 v1, 0xa

    aput-boolean v6, v2, v1

    .line 55
    const v1, 0x7f0c0067

    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/PinActivity;->pin1:Landroid/widget/EditText;

    const/16 v1, 0xb

    aput-boolean v6, v2, v1

    .line 56
    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/PinActivity;->pin2:Landroid/widget/EditText;

    const/16 v1, 0xc

    aput-boolean v6, v2, v1

    .line 57
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/PinActivity;->pin3:Landroid/widget/EditText;

    const/16 v1, 0xd

    aput-boolean v6, v2, v1

    .line 58
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lme/writeily/PinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lme/writeily/PinActivity;->pin4:Landroid/widget/EditText;

    const/16 v1, 0xe

    aput-boolean v6, v2, v1

    .line 60
    invoke-direct {p0}, Lme/writeily/PinActivity;->attachPinListeners()V

    const/16 v1, 0xf

    aput-boolean v6, v2, v1

    .line 61
    invoke-direct {p0}, Lme/writeily/PinActivity;->attachPinKeyListeners()V

    .line 62
    const/16 v1, 0x10

    aput-boolean v6, v2, v1

    return-void

    .line 40
    :cond_0
    const/4 v3, 0x4

    aput-boolean v6, v2, v3

    .line 41
    invoke-virtual {p0, v0}, Lme/writeily/PinActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    const/4 v3, 0x5

    aput-boolean v6, v2, v3

    goto/16 :goto_0

    .line 48
    :cond_1
    iput-boolean v6, p0, Lme/writeily/PinActivity;->isSettingUp:Z

    const/16 v1, 0x8

    aput-boolean v6, v2, v1

    goto :goto_1
.end method
