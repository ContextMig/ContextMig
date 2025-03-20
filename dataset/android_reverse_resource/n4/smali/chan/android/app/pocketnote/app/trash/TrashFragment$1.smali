.class Lchan/android/app/pocketnote/app/trash/TrashFragment$1;
.super Ljava/lang/Object;
.source "TrashFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final synthetic this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x4d7bb3f96162c379L    # -2.4091413838421062E-65

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$1"

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lchan/android/app/pocketnote/app/trash/TrashFragment;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 57
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;

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

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->$jacocoInit()[Z

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    aput-boolean v3, v0, v1

    .line 77
    :goto_0
    const/16 v1, 0xa

    aput-boolean v3, v0, v1

    return v3

    .line 74
    :cond_0
    const/16 v1, 0x8

    aput-boolean v3, v0, v1

    .line 75
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->access$000(Lchan/android/app/pocketnote/app/trash/TrashFragment;Landroid/os/Bundle;)V

    const/16 v1, 0x9

    aput-boolean v3, v0, v1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->$jacocoInit()[Z

    move-result-object v1

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    aput-boolean v4, v1, v4

    .line 61
    iget-object v2, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->access$000(Lchan/android/app/pocketnote/app/trash/TrashFragment;Landroid/os/Bundle;)V

    .line 62
    const/4 v2, 0x2

    aput-boolean v4, v1, v2

    .line 69
    .local v0, "query":Ljava/lang/String;
    :goto_0
    return v4

    .line 65
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND title LIKE \'%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "query":Ljava/lang/String;
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 66
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x4

    aput-boolean v4, v1, v3

    .line 67
    const-string v3, "query"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-boolean v4, v1, v3

    .line 68
    iget-object v3, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$1;->this$0:Lchan/android/app/pocketnote/app/trash/TrashFragment;

    invoke-static {v3, v2}, Lchan/android/app/pocketnote/app/trash/TrashFragment;->access$000(Lchan/android/app/pocketnote/app/trash/TrashFragment;Landroid/os/Bundle;)V

    .line 69
    const/4 v2, 0x6

    aput-boolean v4, v1, v2

    goto :goto_0
.end method
