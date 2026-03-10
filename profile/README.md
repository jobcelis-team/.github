<div align="center">

# Jobcelis

### Event Infrastructure for Developers

Publish events, configure webhooks with advanced filters, receive real-time deliveries,<br>schedule recurring jobs, and build event-driven pipelines — all through a single API.

[![Website](https://img.shields.io/badge/Website-jobcelis.com-0969da?style=for-the-badge&logo=google-chrome&logoColor=white)](https://jobcelis.com)
[![Docs](https://img.shields.io/badge/Docs-jobcelis.com%2Fdocs-85ea2d?style=for-the-badge&logo=readthedocs&logoColor=black)](https://jobcelis.com/docs)
[![License](https://img.shields.io/badge/License-BSL_1.1-333?style=for-the-badge)](https://github.com/jobcelis-team/jobscelis/blob/main/LICENSE)
[![Endpoints](https://img.shields.io/badge/API-98%2B_endpoints-6366f1?style=for-the-badge&logo=fastapi&logoColor=white)](https://jobcelis.com/docs#events)
[![SDKs](https://img.shields.io/badge/SDKs-12_languages-f97316?style=for-the-badge&logo=npm&logoColor=white)](https://jobcelis.com/docs#sdks)

---

**Elixir/OTP** · **Phoenix 1.8** · **LiveView** · **PostgreSQL** · **REST + SSE + WebSocket**

</div>

<br>

## Platform

<table>
  <tr>
    <td width="120" align="center">
      <img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/phoenix/phoenix-original.svg" width="40" alt="Phoenix">
      <br><strong>Core</strong>
    </td>
    <td>
      <a href="https://github.com/jobcelis-team/jobscelis"><strong>jobscelis</strong></a><br>
      REST API · Real-time Dashboard · Webhook Engine · Scheduled Jobs · Pipelines · Dead Letters · Replays · Event Schemas · Sandbox · Analytics · Audit Log · GDPR · Security
    </td>
  </tr>
</table>

<br>

## Features

### Core

<table>
  <tr>
    <td align="center" width="25%">
      <br>
      <strong>🔗 Webhooks</strong><br><br>
      POST deliveries with exponential retries, circuit breaker, topic filters, body transforms, and HMAC-SHA256 signatures
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>📅 Scheduled Jobs</strong><br><br>
      Daily, weekly, monthly, or cron expressions. Emit events or POST to external URLs with full execution history
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🔄 Pipelines</strong><br><br>
      Multi-step event processing with filter, transform, and delay steps. Test with sample payloads before deploying
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>⚡ Real-time Streaming</strong><br><br>
      SSE via <code>/api/v1/stream</code> and WebSocket via Phoenix Channels. Live event and delivery updates
      <br><br>
    </td>
  </tr>
  <tr>
    <td align="center">
      <br>
      <strong>📦 Batch & Delayed Events</strong><br><br>
      Send multiple events in a single request. Schedule future delivery with <code>deliver_at</code>
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>💀 Dead Letters & Replays</strong><br><br>
      Capture exhausted deliveries. Retry or resolve dead letters. Replay historical events by date range
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>📐 Event Schemas</strong><br><br>
      Define JSON Schema validations with versioning. Reject malformed payloads before processing
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>🔑 Idempotency</strong><br><br>
      Deduplication via <code>idempotency_key</code> in body or <code>X-Idempotency-Key</code> header. No duplicate deliveries
      <br><br>
    </td>
  </tr>
</table>

### Platform & Operations

<table>
  <tr>
    <td align="center" width="25%">
      <br>
      <strong>👥 Teams & Multi-Project</strong><br><br>
      Isolated workspaces with role-based access: owner, admin, editor, viewer. Invite members via email
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>📊 Analytics</strong><br><br>
      Events/day, deliveries/day, top topics, webhook success rates, and latency metrics (p50/p95/p99)
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>📋 Audit Log</strong><br><br>
      Immutable record of every action. Filter by actor, action type, and date range. Export as CSV or JSON
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🧪 Sandbox</strong><br><br>
      Temporary webhook endpoints for testing. Capture and inspect requests. Auto-cleanup on expiry
      <br><br>
    </td>
  </tr>
  <tr>
    <td align="center">
      <br>
      <strong>🔔 Alerts & Notifications</strong><br><br>
      Get notified via Email, Slack, Discord, or custom webhooks when deliveries fail or circuits open
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>🧩 Embed Portal</strong><br><br>
      Generate scoped tokens for customers to manage their own webhooks from your app's UI
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>📈 Prometheus Metrics</strong><br><br>
      Export counters, gauges, and histograms for events, deliveries, latency, and circuit breakers
      <br><br>
    </td>
    <td align="center">
      <br>
      <strong>📤 Data Export & Retention</strong><br><br>
      Export events, deliveries, and audit logs in CSV/JSON. Configurable retention policies with dry-run preview
      <br><br>
    </td>
  </tr>
</table>

### Security & Compliance

<table>
  <tr>
    <td align="center" width="25%">
      <br>
      <strong>🔒 Encryption & Auth</strong><br><br>
      AES-256-GCM at rest, memory-hard password hashing, JWT + API Key auth with granular scopes
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🛡️ MFA & Account Protection</strong><br><br>
      TOTP two-factor auth with backup codes. Brute-force lockout, session management, and breach detection
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🌍 GDPR / RGPD</strong><br><br>
      Data export (Art. 15), restrict processing (Art. 18), object (Art. 21), consent versioning, and data portability
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🏥 Reliability</strong><br><br>
      Circuit breaker, outbound rate limiting, IP allowlist, webhook signature verification, and uptime monitoring
      <br><br>
    </td>
  </tr>
</table>

### API & Developer Experience

<table>
  <tr>
    <td align="center" width="25%">
      <br>
      <strong>📡 98+ API Endpoints</strong><br><br>
      Full REST API with cursor pagination, topic wildcards, and standardized error responses
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>📖 OpenAPI 3.0</strong><br><br>
      Complete spec with interactive Swagger UI. Auto-generated from route definitions
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>🌐 Bilingual</strong><br><br>
      Full English and Spanish support. Dashboard, docs, and API error messages in both languages
      <br><br>
    </td>
    <td align="center" width="25%">
      <br>
      <strong>📄 Webhook Templates</strong><br><br>
      Pre-configured templates for common integrations. Body config modes: full, pick, rename, extra
      <br><br>
    </td>
  </tr>
</table>

<br>

## SDKs & Tools

Official SDKs with **full API coverage** across **15 languages and tools**:

<table>
  <thead>
    <tr>
      <th align="left">Language</th>
      <th align="left">Package</th>
      <th align="center">Install</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/typescript/typescript-original.svg" width="16"> <a href="https://www.npmjs.com/package/@jobcelis/sdk">Node.js / TypeScript</a></td>
      <td><code>@jobcelis/sdk</code></td>
      <td align="center"><code>npm i @jobcelis/sdk</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/python/python-original.svg" width="16"> <a href="https://pypi.org/project/jobcelis/">Python</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>pip install jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/go/go-original.svg" width="16"> <a href="https://github.com/jobcelis-team/go-jobcelis">Go</a></td>
      <td><code>go-jobcelis</code></td>
      <td align="center"><code>go get github.com/jobcelis-team/go-jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/php/php-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-php">PHP</a></td>
      <td><code>jobcelis/sdk</code></td>
      <td align="center"><code>composer require jobcelis/sdk</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/ruby/ruby-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-ruby">Ruby</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>gem install jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/elixir/elixir-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-elixir">Elixir</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>{:jobcelis, "~> 1.0"}</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/csharp/csharp-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-dotnet">C# / .NET</a></td>
      <td><code>Jobcelis</code></td>
      <td align="center"><code>dotnet add package Jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/rust/rust-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-rust">Rust</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>cargo add jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/swift/swift-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-swift">Swift</a></td>
      <td>SPM</td>
      <td align="center"><code>.package(url: "...jobcelis-team/jobcelis-swift")</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/java/java-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-java">Java</a></td>
      <td><code>com.jobcelis</code></td>
      <td align="center">Maven / Gradle</td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-dart">Dart / Flutter</a></td>
      <td><code>jobcelis</code></td>
      <td align="center"><code>dart pub add jobcelis</code></td>
    </tr>
    <tr>
      <td><img src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/kotlin/kotlin-original.svg" width="16"> <a href="https://github.com/jobcelis-team/jobcelis-kotlin">Kotlin</a></td>
      <td><code>com.jobcelis</code></td>
      <td align="center">Maven / Gradle</td>
    </tr>
    <tr>
      <td>🖥️ <a href="https://www.npmjs.com/package/@jobcelis/cli">CLI</a></td>
      <td><code>@jobcelis/cli</code></td>
      <td align="center"><code>npm i -g @jobcelis/cli</code></td>
    </tr>
    <tr>
      <td>⚡ <a href="https://github.com/jobcelis-team/jobscelis/tree/main/sdks/github-action">GitHub Action</a></td>
      <td>Action</td>
      <td align="center"><code>uses: jobcelis-team/jobscelis/sdks/github-action@main</code></td>
    </tr>
    <tr>
      <td>🏗️ <a href="https://github.com/jobcelis-team/terraform-provider-jobcelis">Terraform</a></td>
      <td>Provider</td>
      <td align="center"><code>source = "jobcelis-team/jobcelis"</code></td>
    </tr>
  </tbody>
</table>

<br>

## Quick Start

```bash
# Send an event
curl -X POST "https://jobcelis.com/api/v1/events" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"topic":"order.created","order_id":123,"total":99.99}'

# Stream events in real-time (SSE)
curl -N "https://jobcelis.com/api/v1/stream" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

<br>

---

<div align="center">

**[Documentation](https://jobcelis.com/docs)** · **[Get Started](https://jobcelis.com/signup)** · **[API Reference](https://jobcelis.com/docs#events)** · **[Status](https://jobcelis.com/status)**

<sub>Built with Elixir/OTP for reliability and concurrency at scale.</sub>

</div>
