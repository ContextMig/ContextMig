.class Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "MessageListFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/fragment/MessageListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private mFlag:Landroid/view/MenuItem;

.field private mMarkAsRead:Landroid/view/MenuItem;

.field private mMarkAsUnread:Landroid/view/MenuItem;

.field private mSelectAll:Landroid/view/MenuItem;

.field private mUnflag:Landroid/view/MenuItem;

.field final synthetic this$0:Lcom/fsck/k9/fragment/MessageListFragment;


# direct methods
.method constructor <init>(Lcom/fsck/k9/fragment/MessageListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/fragment/MessageListFragment;

    .prologue
    .line 1975
    iput-object p1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAccountUuidsForSelected()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2015
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v8}, Lcom/fsck/k9/fragment/MessageListFragment;->access$800(Lcom/fsck/k9/fragment/MessageListFragment;)[Ljava/lang/String;

    move-result-object v8

    array-length v4, v8

    .line 2016
    .local v4, "maxAccounts":I
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 2018
    .local v1, "accountUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "position":I
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v8}, Lcom/fsck/k9/fragment/MessageListFragment;->access$000(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/fsck/k9/fragment/MessageListAdapter;->getCount()I

    move-result v3

    .local v3, "end":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 2019
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v8}, Lcom/fsck/k9/fragment/MessageListFragment;->access$000(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/fragment/MessageListAdapter;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/fsck/k9/fragment/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 2020
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget v8, v8, Lcom/fsck/k9/fragment/MessageListFragment;->uniqueIdColumn:I

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2022
    .local v6, "uniqueId":J
    iget-object v8, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v8, v8, Lcom/fsck/k9/fragment/MessageListFragment;->selected:Ljava/util/Set;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2023
    const/16 v8, 0x11

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, "accountUuid":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2026
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v8

    iget-object v9, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v9}, Lcom/fsck/k9/fragment/MessageListFragment;->access$800(Lcom/fsck/k9/fragment/MessageListFragment;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v8, v9, :cond_1

    .line 2032
    .end local v0    # "accountUuid":Ljava/lang/String;
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v6    # "uniqueId":J
    :cond_0
    return-object v1

    .line 2018
    .restart local v2    # "cursor":Landroid/database/Cursor;
    .restart local v6    # "uniqueId":J
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private setContextCapabilities(Lcom/fsck/k9/Account;Landroid/view/Menu;)V
    .locals 6
    .param p1, "account"    # Lcom/fsck/k9/Account;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f0c0143

    const v4, 0x7f0c0142

    const v3, 0x7f0c0146

    const v2, 0x7f0c0141

    const/4 v1, 0x0

    .line 2066
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1000(Lcom/fsck/k9/fragment/MessageListFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2068
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2069
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2073
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2074
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2096
    :cond_0
    :goto_0
    return-void

    .line 2078
    :cond_1
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1400(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->isCopyCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2079
    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2082
    :cond_2
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1400(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/controller/MessagingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fsck/k9/controller/MessagingController;->isMoveCapable(Lcom/fsck/k9/Account;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2083
    invoke-interface {p2, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2084
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2085
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2088
    :cond_3
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->hasArchiveFolder()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2089
    invoke-interface {p2, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2092
    :cond_4
    invoke-virtual {p1}, Lcom/fsck/k9/Account;->hasSpamFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2093
    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2127
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2177
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1700(Lcom/fsck/k9/fragment/MessageListFragment;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2178
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1200(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 2181
    :cond_0
    return v4

    .line 2129
    :pswitch_0
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1500(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/util/List;

    move-result-object v0

    .line 2130
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1, v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1600(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V

    .line 2131
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1702(Lcom/fsck/k9/fragment/MessageListFragment;I)I

    goto :goto_0

    .line 2135
    .end local v0    # "messages":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/activity/MessageReference;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-static {v1, v2, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1800(Lcom/fsck/k9/fragment/MessageListFragment;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 2139
    :pswitch_2
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1800(Lcom/fsck/k9/fragment/MessageListFragment;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 2143
    :pswitch_3
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v1, v2, v4}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1800(Lcom/fsck/k9/fragment/MessageListFragment;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 2147
    :pswitch_4
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    sget-object v2, Lcom/fsck/k9/mail/Flag;->FLAGGED:Lcom/fsck/k9/mail/Flag;

    invoke-static {v1, v2, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1800(Lcom/fsck/k9/fragment/MessageListFragment;Lcom/fsck/k9/mail/Flag;Z)V

    goto :goto_0

    .line 2151
    :pswitch_5
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-virtual {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->selectAll()V

    goto :goto_0

    .line 2157
    :pswitch_6
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1500(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1900(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V

    .line 2158
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1702(Lcom/fsck/k9/fragment/MessageListFragment;I)I

    goto :goto_0

    .line 2162
    :pswitch_7
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1500(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$2000(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V

    .line 2163
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1702(Lcom/fsck/k9/fragment/MessageListFragment;I)I

    goto :goto_0

    .line 2167
    :pswitch_8
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1500(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$2100(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V

    .line 2168
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1702(Lcom/fsck/k9/fragment/MessageListFragment;I)I

    goto :goto_0

    .line 2172
    :pswitch_9
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    iget-object v2, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1500(Lcom/fsck/k9/fragment/MessageListFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fsck/k9/fragment/MessageListFragment;->access$2200(Lcom/fsck/k9/fragment/MessageListFragment;Ljava/util/List;)V

    .line 2173
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1, v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1702(Lcom/fsck/k9/fragment/MessageListFragment;I)I

    goto/16 :goto_0

    .line 2127
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c013e
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2048
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 2049
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0d0009

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2052
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$500(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/Account;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->setContextCapabilities(Lcom/fsck/k9/Account;Landroid/view/Menu;)V

    .line 2054
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v1, 0x0

    .line 2037
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1202(Lcom/fsck/k9/fragment/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2038
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mSelectAll:Landroid/view/MenuItem;

    .line 2039
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mMarkAsRead:Landroid/view/MenuItem;

    .line 2040
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mMarkAsUnread:Landroid/view/MenuItem;

    .line 2041
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mFlag:Landroid/view/MenuItem;

    .line 2042
    iput-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mUnflag:Landroid/view/MenuItem;

    .line 2043
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1300(Lcom/fsck/k9/fragment/MessageListFragment;Z)V

    .line 2044
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v5, 0x1

    .line 1984
    const v3, 0x7f0c0147

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mSelectAll:Landroid/view/MenuItem;

    .line 1985
    const v3, 0x7f0c013f

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mMarkAsRead:Landroid/view/MenuItem;

    .line 1986
    const v3, 0x7f0c0140

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mMarkAsUnread:Landroid/view/MenuItem;

    .line 1987
    const v3, 0x7f0c0144

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mFlag:Landroid/view/MenuItem;

    .line 1988
    const v3, 0x7f0c0145

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mUnflag:Landroid/view/MenuItem;

    .line 1991
    iget-object v3, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v3}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1000(Lcom/fsck/k9/fragment/MessageListFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1993
    const v3, 0x7f0c0142

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1994
    const v3, 0x7f0c0141

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1995
    const v3, 0x7f0c0146

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1996
    const v3, 0x7f0c0143

    invoke-interface {p2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1998
    invoke-direct {p0}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->getAccountUuidsForSelected()Ljava/util/Set;

    move-result-object v2

    .line 2000
    .local v2, "accountUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2001
    .local v1, "accountUuid":Ljava/lang/String;
    iget-object v4, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v4}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1100(Lcom/fsck/k9/fragment/MessageListFragment;)Lcom/fsck/k9/Preferences;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lcom/fsck/k9/Account;

    move-result-object v0

    .line 2002
    .local v0, "account":Lcom/fsck/k9/Account;
    if-eqz v0, :cond_0

    .line 2003
    invoke-direct {p0, v0, p2}, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->setContextCapabilities(Lcom/fsck/k9/Account;Landroid/view/Menu;)V

    goto :goto_0

    .line 2008
    .end local v0    # "account":Lcom/fsck/k9/Account;
    .end local v1    # "accountUuid":Ljava/lang/String;
    .end local v2    # "accountUuids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    return v5
.end method

.method public showFlag(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2112
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1200(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mFlag:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2114
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mUnflag:Landroid/view/MenuItem;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2116
    :cond_0
    return-void

    .line 2114
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showMarkAsRead(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1200(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mMarkAsRead:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2107
    iget-object v1, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mMarkAsUnread:Landroid/view/MenuItem;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2109
    :cond_0
    return-void

    .line 2107
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showSelectAll(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->this$0:Lcom/fsck/k9/fragment/MessageListFragment;

    invoke-static {v0}, Lcom/fsck/k9/fragment/MessageListFragment;->access$1200(Lcom/fsck/k9/fragment/MessageListFragment;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2100
    iget-object v0, p0, Lcom/fsck/k9/fragment/MessageListFragment$ActionModeCallback;->mSelectAll:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2102
    :cond_0
    return-void
.end method
