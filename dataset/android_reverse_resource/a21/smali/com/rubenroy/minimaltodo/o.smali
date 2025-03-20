.class public Lcom/rubenroy/minimaltodo/o;
.super Landroid/support/v7/widget/co;

# interfaces
.implements Lcom/rubenroy/minimaltodo/l;


# instance fields
.field final synthetic a:Lcom/rubenroy/minimaltodo/MainActivity;

.field private b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/rubenroy/minimaltodo/MainActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-direct {p0}, Landroid/support/v7/widget/co;-><init>()V

    iput-object p2, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/rubenroy/minimaltodo/o;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/do;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/rubenroy/minimaltodo/o;->c(Landroid/view/ViewGroup;I)Lcom/rubenroy/minimaltodo/q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/do;I)V
    .locals 0

    check-cast p1, Lcom/rubenroy/minimaltodo/q;

    invoke-virtual {p0, p1, p2}, Lcom/rubenroy/minimaltodo/o;->a(Lcom/rubenroy/minimaltodo/q;I)V

    return-void
.end method

.method public a(Lcom/rubenroy/minimaltodo/q;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/x;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const-string v3, "com.avjindersekhon.themepref"

    invoke-virtual {v1, v3, v5}, Lcom/rubenroy/minimaltodo/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "com.avjindersekhon.savedtheme"

    const-string v4, "com.avjindersekon.lighttheme"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.avjindersekon.lighttheme"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-virtual {v1}, Lcom/rubenroy/minimaltodo/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d0072

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    move v3, v2

    :goto_0
    iget-object v4, p1, Lcom/rubenroy/minimaltodo/q;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/rubenroy/minimaltodo/q;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v3, p1, Lcom/rubenroy/minimaltodo/q;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v3, p1, Lcom/rubenroy/minimaltodo/q;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p1, Lcom/rubenroy/minimaltodo/q;->n:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/a/a/a;->a()Lcom/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/f;->b()Lcom/a/a/e;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/a/a/e;->a(I)Lcom/a/a/e;

    move-result-object v1

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v2}, Lcom/a/a/e;->a(Landroid/graphics/Typeface;)Lcom/a/a/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/e;->a()Lcom/a/a/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/a/a/e;->c()Lcom/a/a/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->e()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/a/a/f;->a(Ljava/lang/String;I)Lcom/a/a/a;

    move-result-object v1

    iget-object v2, p1, Lcom/rubenroy/minimaltodo/q;->o:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MMM d, yyyy  k:mm"

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p1, Lcom/rubenroy/minimaltodo/q;->p:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const v1, -0xbbbbbc

    move v3, v1

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/rubenroy/minimaltodo/q;->p:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p1, Lcom/rubenroy/minimaltodo/q;->n:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    :cond_3
    const-string v1, "MMM d, yyyy  h:mm a"

    invoke-virtual {v0}, Lcom/rubenroy/minimaltodo/x;->d()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/rubenroy/minimaltodo/AddToDoActivity;->a(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public a_(I)V
    .locals 4

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/AnalyticsApplication;

    move-result-object v0

    const-string v1, "Action"

    const-string v2, "Swiped Todo Away"

    invoke-virtual {v0, p0, v1, v2}, Lcom/rubenroy/minimaltodo/AnalyticsApplication;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubenroy/minimaltodo/x;

    invoke-static {v1, v0}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;Lcom/rubenroy/minimaltodo/x;)Lcom/rubenroy/minimaltodo/x;

    iget-object v0, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v0, p1}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;I)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    const-class v2, Lcom/rubenroy/minimaltodo/TodoNotificationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    iget-object v2, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v2}, Lcom/rubenroy/minimaltodo/MainActivity;->c(Lcom/rubenroy/minimaltodo/MainActivity;)Lcom/rubenroy/minimaltodo/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/rubenroy/minimaltodo/x;->f()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/rubenroy/minimaltodo/MainActivity;->a(Lcom/rubenroy/minimaltodo/MainActivity;Landroid/content/Intent;I)V

    invoke-virtual {p0, p1}, Lcom/rubenroy/minimaltodo/o;->d(I)V

    const-string v0, "Todo"

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->a:Lcom/rubenroy/minimaltodo/MainActivity;

    invoke-static {v1}, Lcom/rubenroy/minimaltodo/MainActivity;->e(Lcom/rubenroy/minimaltodo/MainActivity;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v1, v0, v2}, Landroid/support/design/widget/Snackbar;->a(Landroid/view/View;Ljava/lang/CharSequence;I)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    const-string v1, "UNDO"

    new-instance v2, Lcom/rubenroy/minimaltodo/p;

    invoke-direct {v2, p0}, Lcom/rubenroy/minimaltodo/p;-><init>(Lcom/rubenroy/minimaltodo/o;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->a(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->a()V

    return-void
.end method

.method public a_(II)V
    .locals 3

    if-ge p1, p2, :cond_0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_1
    if-le v0, p2, :cond_1

    iget-object v1, p0, Lcom/rubenroy/minimaltodo/o;->b:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/rubenroy/minimaltodo/o;->a(II)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/rubenroy/minimaltodo/q;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/rubenroy/minimaltodo/q;

    invoke-direct {v1, p0, v0}, Lcom/rubenroy/minimaltodo/q;-><init>(Lcom/rubenroy/minimaltodo/o;Landroid/view/View;)V

    return-object v1
.end method
