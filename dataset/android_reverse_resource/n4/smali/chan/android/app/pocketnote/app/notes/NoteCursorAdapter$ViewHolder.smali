.class Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "NoteCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field color:Landroid/view/View;

.field content:Landroid/widget/TextView;

.field date:Landroid/widget/TextView;

.field lock:Landroid/widget/ImageView;

.field parent:Landroid/view/View;

.field reminder:Landroid/widget/ImageView;

.field title:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1b07b1fa1e879d64L

    const-string v2, "chan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder"

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 83
    const v0, 0x7f0c0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->parent:Landroid/view/View;

    aput-boolean v2, v1, v2

    .line 84
    const v0, 0x7f0c0074

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->color:Landroid/view/View;

    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    .line 85
    const v0, 0x7f0c0075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/4 v0, 0x3

    aput-boolean v2, v1, v0

    .line 86
    const v0, 0x7f0c0076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->content:Landroid/widget/TextView;

    const/4 v0, 0x4

    aput-boolean v2, v1, v0

    .line 87
    const v0, 0x7f0c0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/4 v0, 0x5

    aput-boolean v2, v1, v0

    .line 88
    const v0, 0x7f0c0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->lock:Landroid/widget/ImageView;

    const/4 v0, 0x6

    aput-boolean v2, v1, v0

    .line 89
    const v0, 0x7f0c0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/NoteCursorAdapter$ViewHolder;->reminder:Landroid/widget/ImageView;

    .line 90
    const/4 v0, 0x7

    aput-boolean v2, v1, v0

    return-void
.end method
