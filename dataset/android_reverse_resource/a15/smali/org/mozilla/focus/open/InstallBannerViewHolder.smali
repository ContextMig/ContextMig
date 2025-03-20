.class public Lorg/mozilla/focus/open/InstallBannerViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "InstallBannerViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final iconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 22
    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/mozilla/focus/open/InstallBannerViewHolder;->iconView:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    return-void
.end method


# virtual methods
.method public bind(Lorg/mozilla/focus/open/AppAdapter$App;)V
    .locals 2
    .param p1, "store"    # Lorg/mozilla/focus/open/AppAdapter$App;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/mozilla/focus/open/InstallBannerViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/mozilla/focus/open/AppAdapter$App;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 29
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/mozilla/focus/activity/InstallFirefoxActivity;->open(Landroid/content/Context;)V

    .line 34
    return-void
.end method
