.class Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;
.super Ljava/lang/Object;
.source "TrashFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/trash/TrashFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrashItemLongClickListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;
    }
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private cursorAdapter:Landroid/widget/CursorAdapter;

.field private fragment:Lcom/actionbarsherlock/app/SherlockFragment;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0x7dc71c95b5e8a9fdL    # -5.9462099980441305E-298

    const-string v2, "chan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener"

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lcom/actionbarsherlock/app/SherlockFragment;Landroid/widget/CursorAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p2, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->cursorAdapter:Landroid/widget/CursorAdapter;

    .line 174
    iput-object p1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    .line 175
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$100(Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;)Lcom/actionbarsherlock/app/SherlockFragment;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    const/16 v2, 0xf

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$200(Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;)Landroid/widget/CursorAdapter;
    .locals 4

    .prologue
    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 166
    iget-object v1, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->cursorAdapter:Landroid/widget/CursorAdapter;

    const/16 v2, 0x10

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getAvailableOptions(Lchan/android/app/pocketnote/app/Note;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchan/android/app/pocketnote/app/Note;",
            ")",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoInit()[Z

    move-result-object v0

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-boolean v3, v0, v3

    .line 179
    sget-object v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->REMOVE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    aput-boolean v3, v0, v2

    .line 180
    sget-object v2, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->RESTORE:Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    const/4 v2, 0x3

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private getOptionItems(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoInit()[Z

    move-result-object v2

    .line 185
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    aput-boolean v7, v2, v1

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v1, 0x5

    aput-boolean v7, v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    const/4 v1, 0x6

    aput-boolean v7, v2, v1

    .line 187
    new-instance v5, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    iget v6, v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->iconId:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;

    iget-object v1, v1, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$Option;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v1}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$Item;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    aput-boolean v7, v2, v1

    goto :goto_0

    .line 189
    :cond_0
    const/16 v1, 0x8

    aput-boolean v7, v2, v1

    return-object v3
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    const/4 v5, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->$jacocoInit()[Z

    move-result-object v1

    .line 194
    iget-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->cursorAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    .line 195
    invoke-static {v0}, Lchan/android/app/pocketnote/app/Note;->fromCursor(Landroid/database/Cursor;)Lchan/android/app/pocketnote/app/Note;

    move-result-object v0

    const/16 v2, 0xa

    aput-boolean v5, v1, v2

    .line 196
    invoke-direct {p0, v0}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->getAvailableOptions(Lchan/android/app/pocketnote/app/Note;)Ljava/util/List;

    move-result-object v2

    const/16 v3, 0xb

    aput-boolean v5, v1, v3

    .line 197
    invoke-virtual {v0}, Lchan/android/app/pocketnote/app/Note;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->getOptionItems(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->newInstance(Ljava/lang/String;Ljava/util/List;)Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;

    move-result-object v3

    const/16 v4, 0xc

    aput-boolean v5, v1, v4

    .line 198
    new-instance v4, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$1;

    invoke-direct {v4, p0, v2, v0}, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener$1;-><init>(Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;Ljava/util/List;Lchan/android/app/pocketnote/app/Note;)V

    invoke-virtual {v3, v4}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->setPickItemListener(Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment$OnPickItemListener;)V

    const/16 v0, 0xd

    aput-boolean v5, v1, v0

    .line 206
    iget-object v0, p0, Lchan/android/app/pocketnote/app/trash/TrashFragment$TrashItemLongClickListener;->fragment:Lcom/actionbarsherlock/app/SherlockFragment;

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v2, "dialog"

    invoke-virtual {v3, v0, v2}, Lchan/android/app/pocketnote/app/notes/ActionListDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 207
    const/16 v0, 0xe

    aput-boolean v5, v1, v0

    return-void
.end method
