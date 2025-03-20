.class Lme/writeily/NotesFragment$PreviousDirClickListener;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviousDirClickListener"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NotesFragment$PreviousDirClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x5a9763a2537af284L    # -1.77524242447958E-128

    const-string v2, "me/writeily/NotesFragment$PreviousDirClickListener"

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NotesFragment$PreviousDirClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method private constructor <init>(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$PreviousDirClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 390
    iput-object p1, p0, Lme/writeily/NotesFragment$PreviousDirClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$PreviousDirClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 393
    iget-object v1, p0, Lme/writeily/NotesFragment$PreviousDirClickListener;->this$0:Lme/writeily/NotesFragment;

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->goToPreviousDir()V

    .line 394
    aput-boolean v2, v0, v2

    return-void
.end method
