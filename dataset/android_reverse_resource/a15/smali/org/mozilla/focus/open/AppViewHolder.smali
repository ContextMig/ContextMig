.class public Lorg/mozilla/focus/open/AppViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AppViewHolder.java"


# instance fields
.field private final iconView:Landroid/widget/ImageView;

.field private final titleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 23
    const v0, 0x7f090119

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder;->titleView:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f09008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder;->iconView:Landroid/widget/ImageView;

    .line 25
    return-void
.end method

.method private createListenerWrapper(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "app"    # Lorg/mozilla/focus/open/AppAdapter$App;
    .param p2, "listener"    # Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    .prologue
    .line 36
    new-instance v0, Lorg/mozilla/focus/open/AppViewHolder$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/mozilla/focus/open/AppViewHolder$1;-><init>(Lorg/mozilla/focus/open/AppViewHolder;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;Lorg/mozilla/focus/open/AppAdapter$App;)V

    return-object v0
.end method


# virtual methods
.method public bind(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)V
    .locals 2
    .param p1, "app"    # Lorg/mozilla/focus/open/AppAdapter$App;
    .param p2, "listener"    # Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lorg/mozilla/focus/open/AppAdapter$App;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lorg/mozilla/focus/open/AppAdapter$App;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lorg/mozilla/focus/open/AppViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2}, Lorg/mozilla/focus/open/AppViewHolder;->createListenerWrapper(Lorg/mozilla/focus/open/AppAdapter$App;Lorg/mozilla/focus/open/AppAdapter$OnAppSelectedListener;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
