.class final Ldouzifly/list/widget/TitleLayout$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldouzifly/list/widget/TitleLayout;->onFinishInflate()V
.end annotation


# instance fields
.field final synthetic a:Ldouzifly/list/widget/TitleLayout;


# direct methods
.method constructor <init>(Ldouzifly/list/widget/TitleLayout;)V
    .locals 0

    iput-object p1, p0, Ldouzifly/list/widget/TitleLayout$b;->a:Ldouzifly/list/widget/TitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ldouzifly/list/widget/TitleLayout$b;->a:Ldouzifly/list/widget/TitleLayout;

    invoke-virtual {v0}, Ldouzifly/list/widget/TitleLayout;->getTitleClickListener()Lb/d/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lb/d/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/g;

    :cond_0
    return-void
.end method
