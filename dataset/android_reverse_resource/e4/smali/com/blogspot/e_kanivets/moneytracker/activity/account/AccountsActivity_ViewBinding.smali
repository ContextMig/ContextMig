.class public Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AccountsActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;

.field private view2131296301:Landroid/view/View;

.field private view2131296382:Landroid/view/View;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x60a815577bef261bL

    const-string/jumbo v2, "com/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding"

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_773e439/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;Landroid/view/View;)V

    .line 26
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public constructor <init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;Landroid/view/View;)V
    .locals 6
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const v5, 0x7f09007e

    const/4 v4, 0x1

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;

    .line 33
    const-string/jumbo v1, "field \'listView\' and method \'onAccountClick\'"

    invoke-static {p2, v5, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    const-string/jumbo v1, "field \'listView\'"

    const-class v3, Landroid/widget/ListView;

    invoke-static {v0, v5, v1, v3}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->listView:Landroid/widget/ListView;

    .line 35
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->view2131296382:Landroid/view/View;

    .line 36
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding$1;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 42
    const v1, 0x7f09002d

    const-string/jumbo v3, "method \'addAccount\'"

    invoke-static {p2, v1, v3}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 43
    .restart local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->view2131296301:Landroid/view/View;

    .line 44
    new-instance v1, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding$2;-><init>(Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    aput-boolean v4, v2, v4

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->$jacocoInit()[Z

    move-result-object v2

    .line 55
    iget-object v0, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;

    .line 56
    .local v0, "target":Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Bindings already cleared."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-boolean v4, v2, v3

    throw v1

    .line 57
    :cond_0
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->target:Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;

    .line 59
    iput-object v3, v0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity;->listView:Landroid/widget/ListView;

    .line 61
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->view2131296382:Landroid/view/View;

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 62
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->view2131296382:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->view2131296301:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v3, p0, Lcom/blogspot/e_kanivets/moneytracker/activity/account/AccountsActivity_ViewBinding;->view2131296301:Landroid/view/View;

    .line 65
    const/4 v1, 0x3

    aput-boolean v4, v2, v1

    return-void
.end method
