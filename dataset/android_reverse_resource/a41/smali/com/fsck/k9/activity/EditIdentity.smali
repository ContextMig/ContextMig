.class public Lcom/fsck/k9/activity/EditIdentity;
.super Lcom/fsck/k9/activity/K9Activity;
.source "EditIdentity.java"


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.EditIdentity_account"

.field public static final EXTRA_IDENTITY:Ljava/lang/String; = "com.fsck.k9.EditIdentity_identity"

.field public static final EXTRA_IDENTITY_INDEX:Ljava/lang/String; = "com.fsck.k9.EditIdentity_identity_index"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mDescriptionView:Landroid/widget/EditText;

.field private mEmailView:Landroid/widget/EditText;

.field private mIdentity:Lcom/fsck/k9/Identity;

.field private mIdentityIndex:I

.field private mNameView:Landroid/widget/EditText;

.field private mReplyTo:Landroid/widget/EditText;

.field private mSignatureLayout:Landroid/widget/LinearLayout;

.field private mSignatureUse:Landroid/widget/CheckBox;

.field private mSignatureView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/EditIdentity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/EditIdentity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/EditIdentity;)Lcom/fsck/k9/Identity;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/EditIdentity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fsck/k9/activity/EditIdentity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/EditIdentity;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;

    return-object v0
.end method

.method private saveIdentity()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mDescriptionView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setDescription(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setEmail(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setName(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureUse:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setSignatureUse(Z)V

    .line 100
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setSignature(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mReplyTo:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setReplyTo(Ljava/lang/String;)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;

    move-result-object v0

    .line 109
    .local v0, "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :goto_1
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 118
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->finish()V

    .line 119
    return-void

    .line 105
    .end local v0    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mReplyTo:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/Identity;->setReplyTo(Ljava/lang/String;)V

    goto :goto_0

    .line 112
    .restart local v0    # "identities":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Identity;>;"
    :cond_1
    iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/fsck/k9/activity/EditIdentity;->saveIdentity()V

    .line 124
    invoke-super {p0}, Lcom/fsck/k9/activity/K9Activity;->onBackPressed()V

    .line 125
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 35
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.fsck.k9.EditIdentity_identity"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Identity;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    .line 38
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.fsck.k9.EditIdentity_identity_index"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I

    .line 39
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EditIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.fsck.k9.EditIdentity_account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mAccount:Lcom/fsck/k9/Account;

    .line 42
    iget v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentityIndex:I

    if-ne v1, v3, :cond_0

    .line 43
    new-instance v1, Lcom/fsck/k9/Identity;

    invoke-direct {v1}, Lcom/fsck/k9/Identity;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    .line 46
    :cond_0
    const v1, 0x7f030015

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->setContentView(I)V

    .line 52
    if-eqz p1, :cond_1

    const-string v1, "com.fsck.k9.EditIdentity_identity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "com.fsck.k9.EditIdentity_identity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Identity;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    .line 56
    :cond_1
    const v1, 0x7f0c0047

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mDescriptionView:Landroid/widget/EditText;

    .line 57
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mDescriptionView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v1, 0x7f0c005b

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mNameView:Landroid/widget/EditText;

    .line 60
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mNameView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 62
    const v1, 0x7f0c0048

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mEmailView:Landroid/widget/EditText;

    .line 63
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mEmailView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v1, 0x7f0c0068

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mReplyTo:Landroid/widget/EditText;

    .line 66
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mReplyTo:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getReplyTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v1, 0x7f0c006a

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureLayout:Landroid/widget/LinearLayout;

    .line 72
    const v1, 0x7f0c0069

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureUse:Landroid/widget/CheckBox;

    .line 73
    const v1, 0x7f0c006b

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/EditIdentity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;

    .line 74
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureUse:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getSignatureUse()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureUse:Landroid/widget/CheckBox;

    new-instance v2, Lcom/fsck/k9/activity/EditIdentity$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/EditIdentity$1;-><init>(Lcom/fsck/k9/activity/EditIdentity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureUse:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {v2}, Lcom/fsck/k9/Identity;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mSignatureLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 130
    const-string v0, "com.fsck.k9.EditIdentity_identity"

    iget-object v1, p0, Lcom/fsck/k9/activity/EditIdentity;->mIdentity:Lcom/fsck/k9/Identity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 131
    return-void
.end method
