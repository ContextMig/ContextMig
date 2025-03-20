.class Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "OptionsTabDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field final icon:Landroid/widget/ImageView;

.field final title:Landroid/widget/TextView;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, -0xfe46d658e2b4a01L    # -1.0701766922583695E232

    const-string v2, "chan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder"

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-static {}, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->$jacocoInit()[Z

    move-result-object v1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aput-boolean v2, v1, v0

    .line 132
    const v0, 0x7f0c008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    aput-boolean v2, v1, v2

    .line 133
    const v0, 0x7f0c008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lchan/android/app/pocketnote/app/notes/OptionsTabDialogFragment$OptionAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 134
    const/4 v0, 0x2

    aput-boolean v2, v1, v0

    return-void
.end method
