.class public Lorg/mozilla/focus/session/ui/EraseViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EraseViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;


# direct methods
.method public constructor <init>(Lorg/mozilla/focus/session/ui/SessionsSheetFragment;Landroid/view/View;)V
    .locals 5
    .param p1, "fragment"    # Lorg/mozilla/focus/session/ui/SessionsSheetFragment;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 25
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p1, p0, Lorg/mozilla/focus/session/ui/EraseViewHolder;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    move-object v1, p2

    .line 29
    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f080088

    invoke-static {v2, v3}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 31
    .local v0, "leftDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-static {}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->eraseInTabsTrayEvent()V

    .line 39
    iget-object v0, p0, Lorg/mozilla/focus/session/ui/EraseViewHolder;->fragment:Lorg/mozilla/focus/session/ui/SessionsSheetFragment;

    invoke-virtual {v0}, Lorg/mozilla/focus/session/ui/SessionsSheetFragment;->animateAndDismiss()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Lorg/mozilla/focus/session/ui/EraseViewHolder$1;

    invoke-direct {v1, p0}, Lorg/mozilla/focus/session/ui/EraseViewHolder$1;-><init>(Lorg/mozilla/focus/session/ui/EraseViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 45
    return-void
.end method
