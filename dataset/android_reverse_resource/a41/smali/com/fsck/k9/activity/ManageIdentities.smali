.class public Lcom/fsck/k9/activity/ManageIdentities;
.super Lcom/fsck/k9/activity/ChooseIdentity;
.source "ManageIdentities.java"


# static fields
.field private static final ACTIVITY_EDIT_IDENTITY:I = 0x1


# instance fields
.field private mIdentitiesChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/activity/ChooseIdentity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/ManageIdentities;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fsck/k9/activity/ManageIdentities;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V

    return-void
.end method

.method private editItem(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fsck/k9/activity/EditIdentity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.fsck.k9.EditIdentity_account"

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const-string v1, "com.fsck.k9.EditIdentity_identity"

    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2, p1}, Lcom/fsck/k9/Account;->getIdentity(I)Lcom/fsck/k9/Identity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 39
    const-string v1, "com.fsck.k9.EditIdentity_identity_index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/ManageIdentities;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    return-void
.end method

.method private saveIdentities()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->setIdentities(Ljava/util/List;)V

    .line 133
    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/Account;->save(Lcom/fsck/k9/Preferences;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->finish()V

    .line 136
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/fsck/k9/activity/ManageIdentities;->saveIdentities()V

    .line 127
    invoke-super {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->onBackPressed()V

    .line 128
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 74
    .local v1, "menuInfo":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 112
    :cond_0
    :goto_0
    return v4

    .line 76
    :pswitch_0
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/fsck/k9/activity/ManageIdentities;->editItem(I)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-lez v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    .line 81
    .local v0, "identity":Lcom/fsck/k9/Identity;
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 82
    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 83
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_0

    .line 88
    .end local v0    # "identity":Lcom/fsck/k9/Identity;
    :pswitch_2
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v3, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 89
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    .line 90
    .restart local v0    # "identity":Lcom/fsck/k9/Identity;
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 91
    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 92
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_0

    .line 96
    .end local v0    # "identity":Lcom/fsck/k9/Identity;
    :pswitch_3
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/Identity;

    .line 97
    .restart local v0    # "identity":Lcom/fsck/k9/Identity;
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 99
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_0

    .line 102
    .end local v0    # "identity":Lcom/fsck/k9/Identity;
    :pswitch_4
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 103
    iget-object v2, p0, Lcom/fsck/k9/activity/ManageIdentities;->identities:Ljava/util/List;

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    iput-boolean v4, p0, Lcom/fsck/k9/activity/ManageIdentities;->mIdentitiesChanged:Z

    .line 105
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    goto :goto_0

    .line 107
    :cond_1
    const v2, 0x7f0702d5

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/ManageIdentities;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 108
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x7f0c012c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ChooseIdentity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 67
    const v0, 0x7f070287

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 68
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ChooseIdentity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 46
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 59
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ChooseIdentity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 54
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/fsck/k9/activity/EditIdentity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.fsck.k9.EditIdentity_account"

    iget-object v3, p0, Lcom/fsck/k9/activity/ManageIdentities;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/activity/ManageIdentities;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0131
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->onResume()V

    .line 120
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->refreshView()V

    .line 121
    return-void
.end method

.method protected setupClickListeners()V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/fsck/k9/activity/ManageIdentities$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/ManageIdentities$1;-><init>(Lcom/fsck/k9/activity/ManageIdentities;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 31
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ManageIdentities;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 32
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/ManageIdentities;->registerForContextMenu(Landroid/view/View;)V

    .line 33
    return-void
.end method
