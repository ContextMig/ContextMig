.class Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x61497474d3471bc1L    # 4.4734154295879886E160

    const-string v2, "com/iliakplv/notes/gui/main/NavigationDrawerFragment$1"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 78
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$1;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-static {v1, p3}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$000(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;I)V

    .line 82
    aput-boolean v2, v0, v2

    return-void
.end method
