.class Lme/writeily/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/writeily/MainActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/MainActivity;

.field final synthetic val$menu:Landroid/view/Menu;

.field final synthetic val$searchItem:Landroid/view/MenuItem;

.field final synthetic val$searchView:Landroid/support/v7/widget/SearchView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/MainActivity$7;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x45d9850e1703e079L    # 3.159191566891041E28

    const-string v2, "me/writeily/MainActivity$7"

    const/16 v3, 0x9

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$7;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/support/v7/widget/SearchView;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 250
    iput-object p1, p0, Lme/writeily/MainActivity$7;->this$0:Lme/writeily/MainActivity;

    iput-object p2, p0, Lme/writeily/MainActivity$7;->val$menu:Landroid/view/Menu;

    iput-object p3, p0, Lme/writeily/MainActivity$7;->val$searchItem:Landroid/view/MenuItem;

    iput-object p4, p0, Lme/writeily/MainActivity$7;->val$searchView:Landroid/support/v7/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6

    .prologue
    const v5, 0x7f0c00a5

    const v2, 0x7f0c00a4

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity$7;->$jacocoInit()[Z

    move-result-object v0

    .line 254
    iget-object v1, p0, Lme/writeily/MainActivity$7;->val$menu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    aput-boolean v3, v0, v3

    .line 255
    iget-object v1, p0, Lme/writeily/MainActivity$7;->val$menu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 263
    :goto_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    return-void

    .line 257
    :cond_0
    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 258
    iget-object v1, p0, Lme/writeily/MainActivity$7;->val$menu:Landroid/view/Menu;

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 259
    iget-object v1, p0, Lme/writeily/MainActivity$7;->val$menu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    .line 260
    iget-object v1, p0, Lme/writeily/MainActivity$7;->val$searchItem:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->collapseActionView()Z

    const/4 v1, 0x6

    aput-boolean v3, v0, v1

    .line 261
    iget-object v1, p0, Lme/writeily/MainActivity$7;->val$searchView:Landroid/support/v7/widget/SearchView;

    const-string v2, ""

    invoke-virtual {v1, v2, v4}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
