.class Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->onContentChanged()V
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

    sget-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x2226a6d7747fe6cfL    # -1.2364209448966729E144

    const-string v2, "com/iliakplv/notes/gui/main/NavigationDrawerFragment$6"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 266
    iput-object p1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

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

    invoke-static {}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->$jacocoInit()[Z

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$400(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    aput-boolean v2, v0, v2

    .line 272
    :goto_0
    const/4 v1, 0x4

    aput-boolean v2, v0, v1

    return-void

    .line 269
    :cond_0
    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    .line 270
    iget-object v1, p0, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$6;->this$0:Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;

    invoke-static {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;->access$400(Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment;)Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iliakplv/notes/gui/main/NavigationDrawerFragment$LabelsListAdapter;->notifyDataSetChanged()V

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    goto :goto_0
.end method
