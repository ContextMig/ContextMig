.class public Lcom/fsck/k9/activity/ChooseFolder;
.super Lcom/fsck/k9/activity/K9ListActivity;
.source "ChooseFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_account"

.field public static final EXTRA_CUR_FOLDER:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_curfolder"

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_message"

.field public static final EXTRA_NEW_FOLDER:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_newfolder"

.field public static final EXTRA_SEL_FOLDER:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_selfolder"

.field public static final EXTRA_SHOW_CURRENT:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_showcurrent"

.field public static final EXTRA_SHOW_DISPLAYABLE_ONLY:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_showDisplayableOnly"

.field public static final EXTRA_SHOW_FOLDER_NONE:Ljava/lang/String; = "com.fsck.k9.ChooseFolder_showOptionNone"


# instance fields
.field mAccount:Lcom/fsck/k9/Account;

.field mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFolder:Ljava/lang/String;

.field private mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

.field mHeldInbox:Ljava/lang/String;

.field mHideCurrentFolder:Z

.field private mListener:Lcom/fsck/k9/controller/MessagingListener;

.field mMessageReference:Lcom/fsck/k9/activity/MessageReference;

.field private mMode:Lcom/fsck/k9/Account$FolderMode;

.field private mMyFilter:Lcom/fsck/k9/activity/FolderListFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fsck/k9/activity/FolderListFilter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSelectFolder:Ljava/lang/String;

.field mShowDisplayableOnly:Z

.field mShowOptionNone:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9ListActivity;-><init>()V

    .line 51
    new-instance v0, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;-><init>(Lcom/fsck/k9/activity/ChooseFolder;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    .line 52
    iput-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHeldInbox:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHideCurrentFolder:Z

    .line 54
    iput-boolean v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mShowOptionNone:Z

    .line 55
    iput-boolean v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mShowDisplayableOnly:Z

    .line 70
    iput-object v2, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMyFilter:Lcom/fsck/k9/activity/FolderListFilter;

    .line 245
    new-instance v0, Lcom/fsck/k9/activity/ChooseFolder$4;

    invoke-direct {v0, p0}, Lcom/fsck/k9/activity/ChooseFolder$4;-><init>(Lcom/fsck/k9/activity/ChooseFolder;)V

    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mListener:Lcom/fsck/k9/controller/MessagingListener;

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/ChooseFolder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHandler:Lcom/fsck/k9/activity/ChooseFolder$ChooseFolderHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fsck/k9/activity/ChooseFolder;)Lcom/fsck/k9/Account$FolderMode;
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/ChooseFolder;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMode:Lcom/fsck/k9/Account$FolderMode;

    return-object v0
.end method

.method private configureFolderSearchView(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 183
    const v2, 0x7f0c0122

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 184
    .local v0, "folderMenuItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 185
    .local v1, "folderSearchView":Landroid/widget/SearchView;
    const v2, 0x7f0701d8

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/ChooseFolder;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 186
    new-instance v2, Lcom/fsck/k9/activity/ChooseFolder$3;

    invoke-direct {v2, p0, v0}, Lcom/fsck/k9/activity/ChooseFolder$3;-><init>(Lcom/fsck/k9/activity/ChooseFolder;Landroid/view/MenuItem;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 200
    return-void
.end method

.method private onRefresh()V
    .locals 4

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 233
    return-void
.end method

.method private setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V
    .locals 4
    .param p1, "aMode"    # Lcom/fsck/k9/Account$FolderMode;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMode:Lcom/fsck/k9/Account$FolderMode;

    .line 238
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMyFilter:Lcom/fsck/k9/activity/FolderListFilter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMyFilter:Lcom/fsck/k9/activity/FolderListFilter;

    invoke-virtual {v0}, Lcom/fsck/k9/activity/FolderListFilter;->invalidate()V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/controller/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 243
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/ChooseFolder;->requestWindowFeature(I)Z

    .line 78
    const v3, 0x7f03001d

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/ChooseFolder;->setContentView(I)V

    .line 80
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 83
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.fsck.k9.ChooseFolder_account"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    .line 86
    const-string v3, "com.fsck.k9.ChooseFolder_message"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    const-string v3, "com.fsck.k9.ChooseFolder_message"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "messageReferenceString":Ljava/lang/String;
    invoke-static {v2}, Lcom/fsck/k9/activity/MessageReference;->parse(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageReference;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMessageReference:Lcom/fsck/k9/activity/MessageReference;

    .line 90
    .end local v2    # "messageReferenceString":Ljava/lang/String;
    :cond_0
    const-string v3, "com.fsck.k9.ChooseFolder_curfolder"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    .line 91
    const-string v3, "com.fsck.k9.ChooseFolder_selfolder"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mSelectFolder:Ljava/lang/String;

    .line 92
    const-string v3, "com.fsck.k9.ChooseFolder_showcurrent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 93
    iput-boolean v6, p0, Lcom/fsck/k9/activity/ChooseFolder;->mHideCurrentFolder:Z

    .line 95
    :cond_1
    const-string v3, "com.fsck.k9.ChooseFolder_showOptionNone"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 96
    iput-boolean v4, p0, Lcom/fsck/k9/activity/ChooseFolder;->mShowOptionNone:Z

    .line 98
    :cond_2
    const-string v3, "com.fsck.k9.ChooseFolder_showDisplayableOnly"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 99
    iput-boolean v4, p0, Lcom/fsck/k9/activity/ChooseFolder;->mShowDisplayableOnly:Z

    .line 101
    :cond_3
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 102
    const-string v3, ""

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mFolder:Ljava/lang/String;

    .line 104
    :cond_4
    new-instance v3, Lcom/fsck/k9/activity/ChooseFolder$1;

    const v4, 0x1090003

    invoke-direct {v3, p0, p0, v4}, Lcom/fsck/k9/activity/ChooseFolder$1;-><init>(Lcom/fsck/k9/activity/ChooseFolder;Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 116
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v3}, Lcom/fsck/k9/activity/ChooseFolder;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getFolderTargetMode()Lcom/fsck/k9/Account$FolderMode;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/activity/ChooseFolder;->mMode:Lcom/fsck/k9/Account$FolderMode;

    .line 119
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/fsck/k9/controller/MessagingController;->getInstance(Landroid/content/Context;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v3

    iget-object v4, p0, Lcom/fsck/k9/activity/ChooseFolder;->mAccount:Lcom/fsck/k9/Account;

    iget-object v5, p0, Lcom/fsck/k9/activity/ChooseFolder;->mListener:Lcom/fsck/k9/controller/MessagingListener;

    invoke-virtual {v3, v4, v6, v5}, Lcom/fsck/k9/controller/MessagingController;->listFolders(Lcom/fsck/k9/Account;ZLcom/fsck/k9/controller/MessagingListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getListView()Landroid/widget/ListView;

    move-result-object v3

    new-instance v4, Lcom/fsck/k9/activity/ChooseFolder$2;

    invoke-direct {v4, p0}, Lcom/fsck/k9/activity/ChooseFolder$2;-><init>(Lcom/fsck/k9/activity/ChooseFolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 139
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 177
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseFolder;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/ChooseFolder;->configureFolderSearchView(Landroid/view/Menu;)V

    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 204
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 226
    :pswitch_0
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 206
    :pswitch_1
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 210
    :pswitch_2
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->FIRST_AND_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 214
    :pswitch_3
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->NOT_SECOND_CLASS:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 218
    :pswitch_4
    sget-object v1, Lcom/fsck/k9/Account$FolderMode;->ALL:Lcom/fsck/k9/Account$FolderMode;

    invoke-direct {p0, v1}, Lcom/fsck/k9/activity/ChooseFolder;->setDisplayMode(Lcom/fsck/k9/Account$FolderMode;)V

    goto :goto_0

    .line 222
    :pswitch_5
    invoke-direct {p0}, Lcom/fsck/k9/activity/ChooseFolder;->onRefresh()V

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0123
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
