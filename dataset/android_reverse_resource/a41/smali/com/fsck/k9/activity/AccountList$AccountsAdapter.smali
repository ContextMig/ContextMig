.class Lcom/fsck/k9/activity/AccountList$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AccountList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/AccountList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/fsck/k9/BaseAccount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/AccountList;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/activity/AccountList;Ljava/util/List;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fsck/k9/activity/AccountList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/BaseAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p2, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/fsck/k9/BaseAccount;>;"
    iput-object p1, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/AccountList;

    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 106
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 110
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/BaseAccount;

    .line 113
    .local v0, "account":Lcom/fsck/k9/BaseAccount;
    if-eqz p2, :cond_3

    .line 114
    move-object v4, p2

    .line 121
    .local v4, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;

    .line 122
    .local v2, "holder":Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
    if-nez v2, :cond_0

    .line 123
    new-instance v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;

    .end local v2    # "holder":Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;-><init>(Lcom/fsck/k9/activity/AccountList$AccountsAdapter;)V

    .line 124
    .restart local v2    # "holder":Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
    const v5, 0x7f0c0047

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    .line 125
    const v5, 0x7f0c0048

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    .line 126
    const v5, 0x7f0c0046

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    .line 128
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 131
    :cond_0
    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "description":Ljava/lang/String;
    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 133
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 140
    :cond_1
    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 143
    :cond_2
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    instance-of v5, v0, Lcom/fsck/k9/Account;

    if-eqz v5, :cond_5

    move-object v3, v0

    .line 146
    check-cast v3, Lcom/fsck/k9/Account;

    .line 147
    .local v3, "realAccount":Lcom/fsck/k9/Account;
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    invoke-virtual {v3}, Lcom/fsck/k9/Account;->getChipColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    .end local v3    # "realAccount":Lcom/fsck/k9/Account;
    :goto_2
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 154
    iget-object v5, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-static {v5}, Lcom/fsck/k9/activity/AccountList;->access$000(Lcom/fsck/k9/activity/AccountList;)Lcom/fsck/k9/FontSizes;

    move-result-object v5

    iget-object v6, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-static {v7}, Lcom/fsck/k9/activity/AccountList;->access$000(Lcom/fsck/k9/activity/AccountList;)Lcom/fsck/k9/FontSizes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getAccountName()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 155
    iget-object v5, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-static {v5}, Lcom/fsck/k9/activity/AccountList;->access$000(Lcom/fsck/k9/activity/AccountList;)Lcom/fsck/k9/FontSizes;

    move-result-object v5

    iget-object v6, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-static {v7}, Lcom/fsck/k9/activity/AccountList;->access$000(Lcom/fsck/k9/activity/AccountList;)Lcom/fsck/k9/FontSizes;

    move-result-object v7

    invoke-virtual {v7}, Lcom/fsck/k9/FontSizes;->getAccountDescription()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/fsck/k9/FontSizes;->setViewTextSize(Landroid/widget/TextView;I)V

    .line 158
    return-object v4

    .line 116
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "holder":Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    iget-object v5, p0, Lcom/fsck/k9/activity/AccountList$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/AccountList;

    invoke-virtual {v5}, Lcom/fsck/k9/activity/AccountList;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03000b

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 117
    .restart local v4    # "view":Landroid/view/View;
    const v5, 0x7f0c003e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    const v5, 0x7f0c004a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 135
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v2    # "holder":Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;
    :cond_4
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/fsck/k9/BaseAccount;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 149
    :cond_5
    iget-object v5, v2, Lcom/fsck/k9/activity/AccountList$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;

    const v6, -0x666667

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_2
.end method
