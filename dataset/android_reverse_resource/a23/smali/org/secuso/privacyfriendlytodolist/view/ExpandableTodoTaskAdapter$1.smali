.class Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;
.super Ljava/lang/Object;
.source "ExpandableTodoTaskAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;->sortTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/secuso/privacyfriendlytodolist/model/TodoTask;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

.field final synthetic val$deadlineSorting:Z

.field final synthetic val$prioSorting:Z


# direct methods
.method constructor <init>(Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;ZZ)V
    .locals 0

    .line 207
    iput-object p1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->this$0:Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter;

    iput-boolean p2, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->val$prioSorting:Z

    iput-boolean p3, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->val$deadlineSorting:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareDeadlines(JJ)I
    .locals 5

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    return v3

    :cond_0
    cmp-long v2, p1, v0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    return v4

    :cond_1
    cmp-long v2, p3, v0

    const/4 v0, -0x1

    if-nez v2, :cond_2

    return v0

    :cond_2
    cmp-long v1, p1, p3

    if-gez v1, :cond_3

    return v0

    :cond_3
    cmp-long v0, p1, p3

    if-nez v0, :cond_4

    return v3

    :cond_4
    return v4
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 207
    check-cast p1, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    check-cast p2, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;

    invoke-virtual {p0, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->compare(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/secuso/privacyfriendlytodolist/model/TodoTask;Lorg/secuso/privacyfriendlytodolist/model/TodoTask;)I
    .locals 2

    .line 223
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->val$prioSorting:Z

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v0

    .line 225
    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getPriority()Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask$Priority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    iget-boolean v1, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->val$deadlineSorting:Z

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->compareDeadlines(JJ)I

    move-result p1

    return p1

    :cond_0
    return v0

    .line 233
    :cond_1
    iget-boolean v0, p0, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->val$deadlineSorting:Z

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getDeadline()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/secuso/privacyfriendlytodolist/view/ExpandableTodoTaskAdapter$1;->compareDeadlines(JJ)I

    move-result p1

    return p1

    .line 236
    :cond_2
    invoke-virtual {p1}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListPosition()I

    move-result p1

    invoke-virtual {p2}, Lorg/secuso/privacyfriendlytodolist/model/TodoTask;->getListPosition()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
