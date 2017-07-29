.class public Lcom/android/settings_ex/applications/ProcessStatsPreference;
.super Lcom/android/settings_ex/H;
.source "ProcessStatsPreference.java"


# instance fields
.field private Ml:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ex/H;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ex/applications/ProcStatsPackageEntry;Landroid/content/pm/PackageManager;DDDZ)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 37
    iput-object p1, p0, Lcom/android/settings_ex/applications/ProcessStatsPreference;->Ml:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    .line 38
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->mPackage:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LF:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LF:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 44
    :goto_1
    iget-wide v2, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LD:D

    iget-wide v4, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->Lz:D

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 45
    :goto_2
    if-eqz p9, :cond_4

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LD:D

    :goto_3
    mul-double/2addr v0, p5

    .line 47
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    double-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    div-double/2addr v0, p3

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setProgress(I)V

    .line 49
    return-void

    .line 38
    :cond_0
    iget-object v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LG:Ljava/lang/String;

    goto :goto_0

    .line 42
    :cond_1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_3
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->Lz:D

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->LC:J

    :goto_5
    long-to-double v0, v0

    mul-double/2addr v0, p7

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    mul-double/2addr v0, v2

    goto :goto_4

    :cond_5
    iget-wide v0, p1, Lcom/android/settings_ex/applications/ProcStatsPackageEntry;->Ly:J

    goto :goto_5
.end method

.method public lm()Lcom/android/settings_ex/applications/ProcStatsPackageEntry;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings_ex/applications/ProcessStatsPreference;->Ml:Lcom/android/settings_ex/applications/ProcStatsPackageEntry;

    return-object v0
.end method
