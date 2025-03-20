.class public Lcom/fsck/k9/activity/setup/AccountSetupOptions;
.super Lcom/fsck/k9/activity/K9Activity;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field private static final EXTRA_MAKE_DEFAULT:Ljava/lang/String; = "makeDefault"


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mCheckFrequencyView:Landroid/widget/Spinner;

.field private mDisplayCountView:Landroid/widget/Spinner;

.field private mNotifySyncView:Landroid/widget/CheckBox;

.field private mNotifyView:Landroid/widget/CheckBox;

.field private mPushEnable:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9Activity;-><init>()V

    return-void
.end method

.method public static actionOptions(Landroid/content/Context;Lcom/fsck/k9/Account;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/setup/AccountSetupOptions;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v1, "makeDefault"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method private onDone()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v1}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setDescription(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setNotifyNewMail(Z)V

    .line 134
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifySyncView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setShowOngoing(Z)V

    .line 135
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 136
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Account;->setAutomaticCheckIntervalMinutes(I)Z

    .line 137
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    .line 138
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/fsck/k9/Account;->setDisplayCount(I)V

    .line 140
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)Z

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 147
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fsck/k9/Preferences;->getDefaultAccount()Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "makeDefault"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Preferences;->setDefaultAccount(Lcom/fsck/k9/Account;)V

    .line 151
    :cond_1
    invoke-static {p0}, Lcom/fsck/k9/K9;->setServicesEnabled(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-static {p0, v0}, Lcom/fsck/k9/activity/setup/AccountSetupNames;->actionSetNames(Landroid/content/Context;Lcom/fsck/k9/Account;)V

    .line 153
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->finish()V

    .line 154
    return-void

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NONE:Lcom/fsck/k9/Account$FolderMode;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setFolderPushMode(Lcom/fsck/k9/Account$FolderMode;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-direct {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->onDone()V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x7f0c000d
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v8, 0x7f030007

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->setContentView(I)V

    .line 45
    const v8, 0x7f0c0037

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    .line 46
    const v8, 0x7f0c0039

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    .line 47
    const v8, 0x7f0c003a

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    .line 48
    const v8, 0x7f0c003b

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifySyncView:Landroid/widget/CheckBox;

    .line 49
    const v8, 0x7f0c0038

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    .line 51
    const v8, 0x7f0c000d

    invoke-virtual {p0, v8}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const/16 v8, 0xc

    new-array v1, v8, [Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v10, -0x1

    .line 54
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070105

    .line 55
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v10, 0x1

    .line 56
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700fd

    .line 57
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v10, 0x5

    .line 58
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070102

    .line 59
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    .line 60
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700f9

    .line 61
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0xf

    .line 62
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700fb

    .line 63
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x5

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x1e

    .line 64
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070100

    .line 65
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x6

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x3c

    .line 66
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700fc

    .line 67
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x7

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x78

    .line 68
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700ff

    .line 69
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/16 v8, 0x8

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0xb4

    .line 70
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070101

    .line 71
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/16 v8, 0x9

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x168

    .line 72
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070103

    .line 73
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/16 v8, 0xa

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x2d0

    .line 74
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700fa

    .line 75
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/16 v8, 0xb

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x5a0

    .line 76
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0700fe

    .line 77
    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    .line 81
    .local v1, "checkFrequencies":[Lcom/fsck/k9/activity/setup/SpinnerOption;
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v2, p0, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 83
    .local v2, "checkFrequenciesAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/fsck/k9/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    .line 84
    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 85
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    const/4 v8, 0x7

    new-array v3, v8, [Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    .line 88
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070106

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x19

    .line 89
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f07010a

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x32

    .line 90
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f07010d

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x64

    .line 91
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070107

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0xfa

    .line 92
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f07010b

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    const/4 v8, 0x5

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x1f4

    .line 93
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f07010e

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    const/4 v8, 0x6

    new-instance v9, Lcom/fsck/k9/activity/setup/SpinnerOption;

    const/16 v10, 0x3e8

    .line 94
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f070108

    invoke-virtual {p0, v11}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/fsck/k9/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v3, v8

    .line 97
    .local v3, "displayCounts":[Lcom/fsck/k9/activity/setup/SpinnerOption;
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v4, p0, v8, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 99
    .local v4, "displayCountsAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/fsck/k9/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v4, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 100
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    invoke-virtual {v8, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 102
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "account"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v8

    iput-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    .line 105
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifyView:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mNotifySyncView:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v9}, Lcom/fsck/k9/Account;->isShowOngoing()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mCheckFrequencyView:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    .line 108
    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getAutomaticCheckIntervalMinutes()I

    move-result v9

    .line 107
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 109
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mDisplayCountView:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    .line 110
    invoke-virtual {v9}, Lcom/fsck/k9/Account;->getDisplayCount()I

    move-result v9

    .line 109
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/fsck/k9/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 113
    const/4 v6, 0x0

    .line 115
    .local v6, "isPushCapable":Z
    :try_start_0
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v8}, Lcom/fsck/k9/Account;->getRemoteStore()Lcom/fsck/k9/mail/Store;

    move-result-object v7

    .line 116
    .local v7, "store":Lcom/fsck/k9/mail/Store;
    invoke-virtual {v7}, Lcom/fsck/k9/mail/Store;->isPushCapable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 122
    .end local v7    # "store":Lcom/fsck/k9/mail/Store;
    :goto_0
    if-nez v6, :cond_0

    .line 123
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 129
    :goto_1
    return-void

    .line 117
    :catch_0
    move-exception v5

    .line 118
    .local v5, "e":Ljava/lang/Exception;
    const-string v8, "Could not get remote store"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5, v8, v9}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 125
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v8, p0, Lcom/fsck/k9/activity/setup/AccountSetupOptions;->mPushEnable:Landroid/widget/CheckBox;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
