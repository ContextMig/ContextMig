.class Lchan/android/app/pocketnote/app/notes/NotesFragment$1;
.super Ljava/lang/Object;
.source "NotesFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/notes/NotesFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x5ae49b3cfacf5308L    # 7.141842330129691E129

    const-string v2, "chan/android/app/pocketnote/app/notes/NotesFragment$1"

    const/16 v3, 0x13

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/notes/NotesFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 73
    iput-object p1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method private buildSearchQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc

    aput-boolean v3, v0, v2

    .line 97
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    aput-boolean v3, v0, v2

    .line 98
    invoke-static {}, Lchan/android/app/pocketnote/app/AppPreferences;->getDefaultAlphabetSortColumn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    aput-boolean v3, v0, v2

    .line 99
    const-string v2, " LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    aput-boolean v3, v0, v2

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    aput-boolean v3, v0, v2

    .line 101
    const-string v2, "%\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x11

    aput-boolean v3, v0, v2

    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    aput-boolean v3, v0, v2

    return-object v1
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 92
    :goto_0
    const/16 v1, 0xb

    aput-boolean v3, v0, v1

    return v3

    .line 89
    :cond_0
    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    .line 90
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$000(Lchan/android/app/pocketnote/app/notes/NotesFragment;Landroid/os/Bundle;)V

    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    aput-boolean v4, v0, v4

    .line 77
    iget-object v1, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$000(Lchan/android/app/pocketnote/app/notes/NotesFragment;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    aput-boolean v4, v0, v1

    .line 84
    :goto_0
    const/4 v1, 0x7

    aput-boolean v4, v0, v1

    return v4

    .line 79
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x3

    aput-boolean v4, v0, v2

    .line 80
    const-string v2, "query"

    invoke-direct {p0, p1}, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->buildSearchQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-boolean v4, v0, v2

    .line 81
    const-string v2, "collection_view_index"

    iget-object v3, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v3}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$100(Lchan/android/app/pocketnote/app/notes/NotesFragment;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x5

    aput-boolean v4, v0, v2

    .line 82
    iget-object v2, p0, Lchan/android/app/pocketnote/app/notes/NotesFragment$1;->this$0:Lchan/android/app/pocketnote/app/notes/NotesFragment;

    invoke-static {v2, v1}, Lchan/android/app/pocketnote/app/notes/NotesFragment;->access$000(Lchan/android/app/pocketnote/app/notes/NotesFragment;Landroid/os/Bundle;)V

    const/4 v1, 0x6

    aput-boolean v4, v0, v1

    goto :goto_0
.end method
