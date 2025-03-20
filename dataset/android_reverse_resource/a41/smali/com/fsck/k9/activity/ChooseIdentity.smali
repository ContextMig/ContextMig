.class public Lcom/fsck/k9/activity/ChooseIdentity;
.super Lcom/fsck/k9/activity/K9ListActivity;
.source "ChooseIdentity.java"


# static fields
.field public static final EXTRA_ACCOUNT:Ljava/lang/String; = "com.fsck.k9.ChooseIdentity_account"

.field public static final EXTRA_IDENTITY:Ljava/lang/String; = "com.fsck.k9.ChooseIdentity_identity"


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected identities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/Identity;",
            ">;"
        }
    .end annotation
.end field

.field mAccount:Lcom/fsck/k9/Account;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9ListActivity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/ChooseIdentity;->requestWindowFeature(I)Z

    .line 32
    const v2, 0x7f03001d

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/ChooseIdentity;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 35
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 37
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.fsck.k9.ChooseIdentity_account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-static {p0}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;

    .line 41
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    invoke-direct {v2, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    .line 43
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v2}, Lcom/fsck/k9/activity/ChooseIdentity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->setupClickListeners()V

    .line 45
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/fsck/k9/activity/K9ListActivity;->onResume()V

    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->refreshView()V

    .line 52
    return-void
.end method

.method protected refreshView()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 56
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 57
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    .line 59
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->mAccount:Lcom/fsck/k9/Account;

    invoke-virtual {v2}, Lcom/fsck/k9/Account;->getIdentities()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    .line 60
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->identities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/Identity;

    .line 61
    .local v1, "identity":Lcom/fsck/k9/Identity;
    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "description":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    :cond_0
    const v3, 0x7f0702b4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/fsck/k9/Identity;->getEmail()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/fsck/k9/activity/ChooseIdentity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 68
    .end local v0    # "description":Ljava/lang/String;
    .end local v1    # "identity":Lcom/fsck/k9/Identity;
    :cond_2
    iget-object v2, p0, Lcom/fsck/k9/activity/ChooseIdentity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method

.method protected setupClickListeners()V
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/fsck/k9/activity/ChooseIdentity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/fsck/k9/activity/ChooseIdentity$1;

    invoke-direct {v1, p0}, Lcom/fsck/k9/activity/ChooseIdentity$1;-><init>(Lcom/fsck/k9/activity/ChooseIdentity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    return-void
.end method
