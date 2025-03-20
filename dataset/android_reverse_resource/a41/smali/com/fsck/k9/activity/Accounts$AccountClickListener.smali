.class Lcom/fsck/k9/activity/Accounts$AccountClickListener;
.super Ljava/lang/Object;
.source "Accounts.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/Accounts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountClickListener"
.end annotation


# instance fields
.field final search:Lcom/fsck/k9/search/LocalSearch;

.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;Lcom/fsck/k9/search/LocalSearch;)V
    .locals 0
    .param p2, "search"    # Lcom/fsck/k9/search/LocalSearch;

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountClickListener;->this$0:Lcom/fsck/k9/activity/Accounts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1904
    iput-object p2, p0, Lcom/fsck/k9/activity/Accounts$AccountClickListener;->search:Lcom/fsck/k9/search/LocalSearch;

    .line 1905
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1909
    iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$AccountClickListener;->this$0:Lcom/fsck/k9/activity/Accounts;

    iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$AccountClickListener;->search:Lcom/fsck/k9/search/LocalSearch;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/fsck/k9/activity/MessageList;->actionDisplaySearch(Landroid/content/Context;Lcom/fsck/k9/search/SearchSpecification;ZZ)V

    .line 1910
    return-void
.end method
