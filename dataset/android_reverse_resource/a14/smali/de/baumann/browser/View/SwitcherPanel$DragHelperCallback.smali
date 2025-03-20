.class Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwitcherPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/baumann/browser/View/SwitcherPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/View/SwitcherPanel;


# direct methods
.method private constructor <init>(Lde/baumann/browser/View/SwitcherPanel;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/baumann/browser/View/SwitcherPanel;Lde/baumann/browser/View/SwitcherPanel$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;-><init>(Lde/baumann/browser/View/SwitcherPanel;)V

    return-void
.end method


# virtual methods
.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$100(Lde/baumann/browser/View/SwitcherPanel;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 2

    .line 86
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$300(Lde/baumann/browser/View/SwitcherPanel;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result p1

    if-nez p1, :cond_1

    .line 87
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    iget-object v0, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    iget-object v1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {v1}, Lde/baumann/browser/View/SwitcherPanel;->access$000(Lde/baumann/browser/View/SwitcherPanel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lde/baumann/browser/View/SwitcherPanel;->access$500(Lde/baumann/browser/View/SwitcherPanel;I)F

    move-result v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/SwitcherPanel;->access$402(Lde/baumann/browser/View/SwitcherPanel;F)F

    .line 89
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$400(Lde/baumann/browser/View/SwitcherPanel;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$600(Lde/baumann/browser/View/SwitcherPanel;)Lde/baumann/browser/View/SwitcherPanel$Status;

    move-result-object p1

    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    if-eq p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->EXPANDED:Lde/baumann/browser/View/SwitcherPanel$Status;

    invoke-static {p1, v0}, Lde/baumann/browser/View/SwitcherPanel;->access$602(Lde/baumann/browser/View/SwitcherPanel;Lde/baumann/browser/View/SwitcherPanel$Status;)Lde/baumann/browser/View/SwitcherPanel$Status;

    .line 91
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$700(Lde/baumann/browser/View/SwitcherPanel;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$400(Lde/baumann/browser/View/SwitcherPanel;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$600(Lde/baumann/browser/View/SwitcherPanel;)Lde/baumann/browser/View/SwitcherPanel$Status;

    move-result-object p1

    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

    if-eq p1, v0, :cond_1

    .line 93
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    sget-object v0, Lde/baumann/browser/View/SwitcherPanel$Status;->COLLAPSED:Lde/baumann/browser/View/SwitcherPanel$Status;

    invoke-static {p1, v0}, Lde/baumann/browser/View/SwitcherPanel;->access$602(Lde/baumann/browser/View/SwitcherPanel;Lde/baumann/browser/View/SwitcherPanel$Status;)Lde/baumann/browser/View/SwitcherPanel$Status;

    .line 94
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1}, Lde/baumann/browser/View/SwitcherPanel;->access$800(Lde/baumann/browser/View/SwitcherPanel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 80
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p1, p3}, Lde/baumann/browser/View/SwitcherPanel;->access$200(Lde/baumann/browser/View/SwitcherPanel;I)V

    .line 81
    iget-object p1, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-virtual {p1}, Lde/baumann/browser/View/SwitcherPanel;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    iget-object p2, p0, Lde/baumann/browser/View/SwitcherPanel$DragHelperCallback;->this$0:Lde/baumann/browser/View/SwitcherPanel;

    invoke-static {p2}, Lde/baumann/browser/View/SwitcherPanel;->access$000(Lde/baumann/browser/View/SwitcherPanel;)Landroid/view/View;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
