.class Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->setUp(ILandroid/support/v4/widget/DrawerLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x477da69377717297L    # 2.4632827583595472E36

    const-string v2, "com/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 181
    iput-object p1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;->$jacocoInit()[Z

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment$3;->this$0:Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;->access$200(Lcom/kvannli/simonkvannli/dailybudget/NavigationDrawerFragment;)Landroid/support/v4/app/ActionBarDrawerToggle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V

    .line 185
    aput-boolean v2, v0, v2

    return-void
.end method
