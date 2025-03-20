.class Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Lcom/fsck/k9/activity/misc/NonConfigurationInstance;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordPromptDialog"
.end annotation


# instance fields
.field private mAccount:Lcom/fsck/k9/Account;

.field private mDialog:Landroid/app/AlertDialog;

.field private mIncomingPassword:Ljava/lang/String;

.field private mIncomingPasswordView:Landroid/widget/EditText;

.field private mOutgoingPassword:Ljava/lang/String;

.field private mOutgoingPasswordView:Landroid/widget/EditText;

.field private mRemainingAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mUseIncoming:Z

.field private mUseIncomingView:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/fsck/k9/Account;Ljava/util/List;)V
    .locals 0
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 733
    .local p2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/Account;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mAccount:Lcom/fsck/k9/Account;

    .line 735
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mRemainingAccounts:Ljava/util/List;

    .line 736
    return-void
.end method

.method static synthetic access$1100(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Lcom/fsck/k9/Account;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mAccount:Lcom/fsck/k9/Account;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mRemainingAccounts:Ljava/util/List;

    return-object v0
.end method

.method private show(Lcom/fsck/k9/activity/Accounts;Z)V
    .locals 17
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;
    .param p2, "restore"    # Z

    .prologue
    .line 773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v13}, Lcom/fsck/k9/Account;->getStoreUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/fsck/k9/mail/store/RemoteStore;->decodeStoreUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v5

    .line 774
    .local v5, "incoming":Lcom/fsck/k9/mail/ServerSettings;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v13}, Lcom/fsck/k9/Account;->getTransportUri()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/fsck/k9/mail/TransportUris;->decodeTransportUri(Ljava/lang/String;)Lcom/fsck/k9/mail/ServerSettings;

    move-result-object v9

    .line 782
    .local v9, "outgoing":Lcom/fsck/k9/mail/ServerSettings;
    sget-object v13, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    iget-object v14, v9, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    if-eq v13, v14, :cond_4

    sget-object v13, Lcom/fsck/k9/mail/ServerSettings$Type;->WebDAV:Lcom/fsck/k9/mail/ServerSettings$Type;

    iget-object v14, v9, Lcom/fsck/k9/mail/ServerSettings;->type:Lcom/fsck/k9/mail/ServerSettings$Type;

    if-eq v13, v14, :cond_4

    iget-object v13, v9, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v9, Lcom/fsck/k9/mail/ServerSettings;->username:Ljava/lang/String;

    .line 785
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    iget-object v13, v9, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v13, :cond_0

    iget-object v13, v9, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 787
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_0
    const/4 v4, 0x1

    .line 789
    .local v4, "configureOutgoingServer":Z
    :goto_0
    sget-object v13, Lcom/fsck/k9/mail/AuthType;->EXTERNAL:Lcom/fsck/k9/mail/AuthType;

    iget-object v14, v5, Lcom/fsck/k9/mail/ServerSettings;->authenticationType:Lcom/fsck/k9/mail/AuthType;

    if-eq v13, v14, :cond_5

    iget-object v13, v5, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    if-eqz v13, :cond_1

    iget-object v13, v5, Lcom/fsck/k9/mail/ServerSettings;->password:Ljava/lang/String;

    .line 791
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    :cond_1
    const/4 v3, 0x1

    .line 794
    .local v3, "configureIncomingServer":Z
    :goto_1
    new-instance v11, Landroid/widget/ScrollView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 797
    .local v11, "scrollView":Landroid/widget/ScrollView;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const v13, 0x7f070358

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 799
    invoke-virtual {v2, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 800
    const v13, 0x7f0702eb

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$1;-><init>(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;Lcom/fsck/k9/activity/Accounts;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 823
    const v13, 0x7f070153

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/fsck/k9/activity/Accounts;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$2;-><init>(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;Lcom/fsck/k9/activity/Accounts;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 831
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    .line 834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f03000c

    invoke-virtual {v13, v14, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 837
    .local v8, "layout":Landroid/view/View;
    const v13, 0x7f0c004b

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 838
    .local v7, "intro":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/fsck/k9/activity/Accounts;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f060007

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    const/4 v13, 0x2

    :goto_2
    invoke-virtual {v14, v15, v13}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v12

    .line 841
    .local v12, "serverPasswords":Ljava/lang/String;
    const v13, 0x7f070359

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mAccount:Lcom/fsck/k9/Account;

    move-object/from16 v16, v0

    .line 842
    invoke-virtual/range {v16 .. v16}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    .line 841
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    if-eqz v3, :cond_7

    .line 846
    const v13, 0x7f0c004d

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 848
    .local v6, "incomingText":Landroid/widget/TextView;
    const v13, 0x7f07035f

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v5, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    const v13, 0x7f0c004e

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 857
    .end local v6    # "incomingText":Landroid/widget/TextView;
    :goto_3
    if-eqz v4, :cond_9

    .line 859
    const v13, 0x7f0c0050

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 861
    .local v10, "outgoingText":Landroid/widget/TextView;
    const v13, 0x7f070360

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-object v0, v9, Lcom/fsck/k9/mail/ServerSettings;->host:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Lcom/fsck/k9/activity/Accounts;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 864
    const v13, 0x7f0c0052

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 868
    const v13, 0x7f0c0051

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    .line 871
    if-eqz v3, :cond_8

    .line 872
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    new-instance v14, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog$3;-><init>(Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;)V

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 895
    .end local v10    # "outgoingText":Landroid/widget/TextView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 899
    if-eqz p2, :cond_a

    .line 900
    if-eqz v3, :cond_2

    .line 901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 903
    :cond_2
    if-eqz v4, :cond_3

    .line 904
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPassword:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncoming:Z

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 917
    :cond_3
    :goto_5
    return-void

    .line 787
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "configureIncomingServer":Z
    .end local v4    # "configureOutgoingServer":Z
    .end local v7    # "intro":Landroid/widget/TextView;
    .end local v8    # "layout":Landroid/view/View;
    .end local v11    # "scrollView":Landroid/widget/ScrollView;
    .end local v12    # "serverPasswords":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 791
    .restart local v4    # "configureOutgoingServer":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 838
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v3    # "configureIncomingServer":Z
    .restart local v7    # "intro":Landroid/widget/TextView;
    .restart local v8    # "layout":Landroid/view/View;
    .restart local v11    # "scrollView":Landroid/widget/ScrollView;
    :cond_6
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 854
    .restart local v12    # "serverPasswords":Ljava/lang/String;
    :cond_7
    const v13, 0x7f0c004c

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 886
    .restart local v10    # "outgoingText":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_4

    .line 891
    .end local v10    # "outgoingText":Landroid/widget/TextView;
    :cond_9
    const v13, 0x7f0c004f

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 910
    :cond_a
    if-eqz v3, :cond_b

    .line 911
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 913
    :cond_b
    if-eqz v4, :cond_3

    .line 914
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 921
    const/4 v0, 0x0

    .line 923
    .local v0, "enable":Z
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 924
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 926
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 927
    const/4 v0, 0x1

    .line 941
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 942
    return-void

    .line 931
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    .line 932
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 933
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 937
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 947
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 952
    return-void
.end method

.method public restore(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 740
    check-cast p1, Lcom/fsck/k9/activity/Accounts;

    .end local p1    # "activity":Landroid/app/Activity;
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->show(Lcom/fsck/k9/activity/Accounts;Z)V

    .line 741
    return-void
.end method

.method public retain()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 745
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPassword:Ljava/lang/String;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPassword:Ljava/lang/String;

    .line 752
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncoming:Z

    .line 756
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 759
    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mDialog:Landroid/app/AlertDialog;

    .line 760
    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mIncomingPasswordView:Landroid/widget/EditText;

    .line 761
    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mOutgoingPasswordView:Landroid/widget/EditText;

    .line 762
    iput-object v1, p0, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->mUseIncomingView:Landroid/widget/CheckBox;

    .line 763
    const/4 v0, 0x1

    .line 765
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Lcom/fsck/k9/activity/Accounts;)V
    .locals 1
    .param p1, "activity"    # Lcom/fsck/k9/activity/Accounts;

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fsck/k9/activity/Accounts$PasswordPromptDialog;->show(Lcom/fsck/k9/activity/Accounts;Z)V

    .line 770
    return-void
.end method
