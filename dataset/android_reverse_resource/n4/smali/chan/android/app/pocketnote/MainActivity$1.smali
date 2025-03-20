.class Lchan/android/app/pocketnote/MainActivity$1;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/MainActivity;->setupNavigationDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/MainActivity;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/MainActivity$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x78b255feb383f03dL

    const-string v2, "chan/android/app/pocketnote/MainActivity$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/MainActivity$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 7

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$1;->$jacocoInit()[Z

    move-result-object v6

    .line 137
    iput-object p1, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

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
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 139
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/MainActivity;->access$100(Lchan/android/app/pocketnote/MainActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    aput-boolean v3, v0, v3

    .line 140
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/MainActivity;->invalidateOptionsMenu()V

    .line 141
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/MainActivity$1;->$jacocoInit()[Z

    move-result-object v0

    .line 144
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/MainActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-static {v2}, Lchan/android/app/pocketnote/MainActivity;->access$200(Lchan/android/app/pocketnote/MainActivity;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    .line 145
    iget-object v1, p0, Lchan/android/app/pocketnote/MainActivity$1;->this$0:Lchan/android/app/pocketnote/MainActivity;

    invoke-virtual {v1}, Lchan/android/app/pocketnote/MainActivity;->invalidateOptionsMenu()V

    .line 146
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    return-void
.end method
