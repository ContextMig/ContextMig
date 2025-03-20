.class public Lcom/fsck/k9/activity/EmailAddressList;
.super Lcom/fsck/k9/activity/K9ListActivity;
.source "EmailAddressList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final EXTRA_CONTACT_ITEM:Ljava/lang/String; = "contact"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/fsck/k9/activity/K9ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/fsck/k9/activity/K9ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v4, 0x7f030016

    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/EmailAddressList;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EmailAddressList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 27
    .local v2, "i":Landroid/content/Intent;
    const-string v4, "contact"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/fsck/k9/helper/ContactItem;

    .line 28
    .local v1, "contact":Lcom/fsck/k9/helper/ContactItem;
    if-nez v1, :cond_0

    .line 29
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EmailAddressList;->finish()V

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030017

    iget-object v5, v1, Lcom/fsck/k9/helper/ContactItem;->emailAddresses:Ljava/util/List;

    invoke-direct {v0, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EmailAddressList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 37
    .local v3, "listView":Landroid/widget/ListView;
    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 38
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 39
    iget-object v4, v1, Lcom/fsck/k9/helper/ContactItem;->displayName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/fsck/k9/activity/EmailAddressList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 46
    .local v1, "item":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "emailAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/fsck/k9/activity/EmailAddressList;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/fsck/k9/activity/EmailAddressList;->finish()V

    .line 52
    return-void
.end method
