.class final Lcom/appflood/AFListActivity$b;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appflood/AFListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/appflood/AFListActivity;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/appflood/AFListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appflood/AFListActivity$b;->b:Lcom/appflood/AFListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/appflood/AFListActivity$b;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/appflood/AFListActivity$b;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFListActivity$b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFListActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/appflood/AFListActivity$b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appflood/AFListActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_2

    :try_start_0
    new-instance v1, Lcom/appflood/AFListActivity$c;

    iget-object v2, p0, Lcom/appflood/AFListActivity$b;->b:Lcom/appflood/AFListActivity;

    iget-object v3, p0, Lcom/appflood/AFListActivity$b;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/appflood/AFListActivity$c;-><init>(Lcom/appflood/AFListActivity;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v1

    move-object v3, v1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/appflood/AFListActivity$b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v5, v4, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v2, "des"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v5, v4, Lcom/appflood/AFListActivity$c;->b:Landroid/widget/TextView;

    const-string v2, "des"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v2, "icon_url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "icon_url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, v4, Lcom/appflood/AFListActivity$c;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iput-object v2, v4, Lcom/appflood/AFListActivity$c;->d:Ljava/lang/String;

    new-instance v5, Lcom/appflood/b/b;

    iget-object v6, v4, Lcom/appflood/AFListActivity$c;->d:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/appflood/AFListActivity$c$1;

    invoke-direct {v6, v4, v2}, Lcom/appflood/AFListActivity$c$1;-><init>(Lcom/appflood/AFListActivity$c;Ljava/lang/String;)V

    iput-object v6, v5, Lcom/appflood/b/b;->b:Lcom/appflood/b/b$a;

    invoke-virtual {v5}, Lcom/appflood/b/b;->e()V

    :cond_0
    const-string v2, "show_cb_url"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/appflood/e/j;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lcom/appflood/b/b;

    const/4 v5, 0x0

    invoke-direct {v4, v2, v5}, Lcom/appflood/b/b;-><init>(Ljava/lang/String;B)V

    invoke-virtual {v4}, Lcom/appflood/b/b;->e()V

    const-string v4, "show_cb_url_copy"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "show_cb_url"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v1, v3

    :goto_3
    new-instance v2, Lcom/appflood/AFListActivity$b$1;

    invoke-direct {v2, p0, p1}, Lcom/appflood/AFListActivity$b$1;-><init>(Lcom/appflood/AFListActivity$b;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1

    :cond_2
    :try_start_2
    move-object v0, p2

    check-cast v0, Lcom/appflood/AFListActivity$c;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v1

    move-object v3, p2

    goto/16 :goto_0

    :cond_3
    :try_start_3
    iget-object v2, v4, Lcom/appflood/AFListActivity$c;->a:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v3

    :goto_4
    const-string v3, "error in getView"

    invoke-static {v2, v3}, Lcom/appflood/e/j;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :try_start_4
    iget-object v2, v4, Lcom/appflood/AFListActivity$c;->b:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v1

    move-object v1, p2

    goto :goto_4
.end method
