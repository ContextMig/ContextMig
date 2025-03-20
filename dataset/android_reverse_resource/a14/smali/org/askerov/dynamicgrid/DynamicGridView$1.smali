.class Lorg/askerov/dynamicgrid/DynamicGridView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DynamicGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/askerov/dynamicgrid/DynamicGridView;->animateReorder(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/askerov/dynamicgrid/DynamicGridView;


# direct methods
.method constructor <init>(Lorg/askerov/dynamicgrid/DynamicGridView;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$1;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 608
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$1;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$702(Lorg/askerov/dynamicgrid/DynamicGridView;Z)Z

    .line 609
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$1;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$800(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 602
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$1;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$702(Lorg/askerov/dynamicgrid/DynamicGridView;Z)Z

    .line 603
    iget-object p1, p0, Lorg/askerov/dynamicgrid/DynamicGridView$1;->this$0:Lorg/askerov/dynamicgrid/DynamicGridView;

    invoke-static {p1}, Lorg/askerov/dynamicgrid/DynamicGridView;->access$800(Lorg/askerov/dynamicgrid/DynamicGridView;)V

    return-void
.end method
