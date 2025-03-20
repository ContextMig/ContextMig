.class Lme/writeily/NotesFragment$1;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Lcom/mobsandgeeks/adapters/Sectionizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/writeily/NotesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mobsandgeeks/adapters/Sectionizer",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lme/writeily/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/NotesFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x74eeb0ab05ad2837L    # -2.305674539724846E-255

    const-string v2, "me/writeily/NotesFragment$1"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/NotesFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    iput-object p1, p0, Lme/writeily/NotesFragment$1;->this$0:Lme/writeily/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public getSectionTitleForItem(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/writeily/NotesFragment$1;->this$0:Lme/writeily/NotesFragment;

    const v2, 0x7f060038

    invoke-virtual {v0, v2}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-boolean v3, v1, v3

    :goto_0
    const/4 v2, 0x3

    aput-boolean v3, v1, v2

    return-object v0

    :cond_0
    iget-object v0, p0, Lme/writeily/NotesFragment$1;->this$0:Lme/writeily/NotesFragment;

    const v2, 0x7f060036

    invoke-virtual {v0, v2}, Lme/writeily/NotesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-boolean v3, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic getSectionTitleForItem(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    invoke-static {}, Lme/writeily/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 58
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lme/writeily/NotesFragment$1;->getSectionTitleForItem(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method
