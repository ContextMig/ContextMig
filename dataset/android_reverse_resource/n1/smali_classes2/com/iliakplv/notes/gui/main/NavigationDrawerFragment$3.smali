.class Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x6376ff6595adc7adL

    const-string v2, "com/iliakplv/notes/gui/main/NavigationDrawerFragment$3"

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 7

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->$jacocoInit()[Z

    move-result-object v6

    .line 134
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v6, v0

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    aput-boolean v2, v0, v2

    .line 138
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 142
    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 146
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    .line 147
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$3;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 151
    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
