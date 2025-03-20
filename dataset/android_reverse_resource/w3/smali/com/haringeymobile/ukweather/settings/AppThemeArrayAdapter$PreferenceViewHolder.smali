.class Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;
.super Ljava/lang/Object;
.source "AppThemeArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreferenceViewHolder"
.end annotation


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private colorView:Landroid/view/View;

.field private nameTextView:Landroid/widget/CheckedTextView;

.field final synthetic this$0:Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x20c06411fe4dca17L    # 6.259144385933931E-151

    const-string v2, "com/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder"

    const/4 v3, 0x5

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method constructor <init>(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;)V
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->this$0:Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;)Landroid/view/View;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->colorView:Landroid/view/View;

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$002(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->colorView:Landroid/view/View;

    aput-boolean v1, v0, v1

    return-object p1
.end method

.method static synthetic access$100(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;)Landroid/widget/CheckedTextView;
    .locals 4

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->nameTextView:Landroid/widget/CheckedTextView;

    const/4 v2, 0x4

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method static synthetic access$102(Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;Landroid/widget/CheckedTextView;)Landroid/widget/CheckedTextView;
    .locals 3

    .prologue
    invoke-static {}, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->$jacocoInit()[Z

    move-result-object v0

    .line 18
    iput-object p1, p0, Lcom/haringeymobile/ukweather/settings/AppThemeArrayAdapter$PreferenceViewHolder;->nameTextView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-object p1
.end method
