.class Lde/baumann/browser/Activity/BrowserActivity$18;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/baumann/browser/Activity/BrowserActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/baumann/browser/Activity/BrowserActivity;

.field final synthetic val$gridList:Ljava/util/List;

.field final synthetic val$gridView:Lorg/askerov/dynamicgrid/DynamicGridView;


# direct methods
.method constructor <init>(Lde/baumann/browser/Activity/BrowserActivity;Lorg/askerov/dynamicgrid/DynamicGridView;Ljava/util/List;)V
    .locals 0

    .line 1017
    iput-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iput-object p2, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->val$gridView:Lorg/askerov/dynamicgrid/DynamicGridView;

    iput-object p3, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->val$gridList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1020
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->val$gridView:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-virtual {p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->stopEditMode()V

    .line 1021
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1500(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/Button;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1022
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-static {p1}, Lde/baumann/browser/Activity/BrowserActivity;->access$1600(Lde/baumann/browser/Activity/BrowserActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1024
    new-instance p1, Lde/baumann/browser/Database/RecordAction;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    invoke-direct {p1, v0}, Lde/baumann/browser/Database/RecordAction;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 1025
    invoke-virtual {p1, v0}, Lde/baumann/browser/Database/RecordAction;->open(Z)V

    .line 1026
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->clearGrid()V

    .line 1027
    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->val$gridList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/baumann/browser/View/GridItem;

    .line 1028
    invoke-virtual {p1, v1}, Lde/baumann/browser/Database/RecordAction;->addGridItem(Lde/baumann/browser/View/GridItem;)Z

    goto :goto_0

    .line 1030
    :cond_0
    invoke-virtual {p1}, Lde/baumann/browser/Database/RecordAction;->close()V

    .line 1031
    iget-object p1, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    iget-object v0, p0, Lde/baumann/browser/Activity/BrowserActivity$18;->this$0:Lde/baumann/browser/Activity/BrowserActivity;

    const v1, 0x7f0e0108

    invoke-virtual {v0, v1}, Lde/baumann/browser/Activity/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lde/baumann/browser/View/NinjaToast;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
