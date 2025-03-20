.class Lcom/fsck/k9/activity/ManageIdentities$1;
.super Ljava/lang/Object;
.source "ManageIdentities.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/ManageIdentities;->setupClickListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/ManageIdentities;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/ManageIdentities;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fsck/k9/activity/ManageIdentities;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/fsck/k9/activity/ManageIdentities$1;->this$0:Lcom/fsck/k9/activity/ManageIdentities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 27
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/fsck/k9/activity/ManageIdentities$1;->this$0:Lcom/fsck/k9/activity/ManageIdentities;

    invoke-static {v0, p3}, Lcom/fsck/k9/activity/ManageIdentities;->access$000(Lcom/fsck/k9/activity/ManageIdentities;I)V

    .line 28
    return-void
.end method
