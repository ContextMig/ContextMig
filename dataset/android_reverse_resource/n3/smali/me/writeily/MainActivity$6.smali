.class Lme/writeily/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v7/widget/SearchView$OnQueryTextListener;


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


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lme/writeily/MainActivity$6;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x48a701b931980b71L    # -4.4829475778490065E-42

    const-string v2, "me/writeily/MainActivity$6"

    const/16 v3, 0xf

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lme/writeily/MainActivity$6;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lme/writeily/MainActivity;)V
    .locals 3

    .prologue
    invoke-static {}, Lme/writeily/MainActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 225
    iput-object p1, p0, Lme/writeily/MainActivity$6;->this$0:Lme/writeily/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 237
    if-nez p1, :cond_0

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 246
    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    return v1

    .line 237
    :cond_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 238
    iget-object v1, p0, Lme/writeily/MainActivity$6;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    .line 239
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    .line 240
    iget-object v1, p0, Lme/writeily/MainActivity$6;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->clearSearchFilter()V

    const/16 v1, 0xc

    aput-boolean v3, v0, v1

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, p0, Lme/writeily/MainActivity$6;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/writeily/NotesFragment;->search(Ljava/lang/CharSequence;)V

    const/16 v1, 0xd

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lme/writeily/MainActivity$6;->$jacocoInit()[Z

    move-result-object v0

    .line 228
    if-nez p1, :cond_0

    aput-boolean v3, v0, v3

    .line 232
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x6

    aput-boolean v3, v0, v2

    return v1

    .line 228
    :cond_0
    const/4 v1, 0x2

    aput-boolean v3, v0, v1

    .line 229
    iget-object v1, p0, Lme/writeily/MainActivity$6;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    invoke-virtual {v1}, Lme/writeily/NotesFragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x3

    aput-boolean v3, v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    aput-boolean v3, v0, v1

    .line 230
    iget-object v1, p0, Lme/writeily/MainActivity$6;->this$0:Lme/writeily/MainActivity;

    invoke-static {v1}, Lme/writeily/MainActivity;->access$100(Lme/writeily/MainActivity;)Lme/writeily/NotesFragment;

    move-result-object v1

    invoke-virtual {v1, p1}, Lme/writeily/NotesFragment;->search(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    aput-boolean v3, v0, v1

    goto :goto_0
.end method
