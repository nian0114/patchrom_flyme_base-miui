.class Lcom/android/settings_ex/bq;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ih:Lcom/android/settings_ex/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/settings_ex/bq;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/bq;->ih:Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings_ex/DataUsageSummary;->ek()V

    .line 518
    return-void
.end method
