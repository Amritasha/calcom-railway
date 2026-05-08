# Deploy and Host Cal.com on Railway

Cal.com is an open-source scheduling infrastructure platform. It enables individuals and teams to create customizable booking pages, manage availability, and integrate with calendars and conferencing tools — a fully self-hosted alternative to Calendly that you completely own and control.

## About Hosting Cal.com

Hosting Cal.com requires running its Next.js application alongside a PostgreSQL database. Cal.com stores availability rules, booking records, user accounts, and integration credentials in Postgres. On Railway, the app and database are provisioned and networked automatically. You will need to configure an email provider (SMTP or services like SendGrid) for booking confirmations and reminders. Cal.com also integrates with external calendar providers (Google Calendar, Outlook) and video conferencing tools (Zoom, Google Meet) via OAuth credentials set as environment variables at deploy time.

## Common Use Cases

- Scheduling client calls and demos with a branded, self-hosted booking page
- Managing team availability and round-robin meeting distribution without per-seat SaaS fees
- Embedding a booking widget into a product or marketing site with full customization

## Dependencies for Cal.com Hosting

- **PostgreSQL** — primary data store for bookings, users, and scheduling rules
- **SMTP provider** — for sending booking confirmations, reminders, and cancellations

### Deployment Dependencies

- [Cal.com Documentation](https://cal.com/docs)
- [Cal.com GitHub Repository](https://github.com/calcom/cal.com)
- [Cal.com Self-Hosting Guide](https://cal.com/docs/self-hosting)
- [Railway PostgreSQL Plugin](https://docs.railway.com/databases/postgresql)

## Why Deploy Cal.com on Railway?

Railway is a singular platform to deploy your infrastructure stack. Railway will host your infrastructure so you do not have to deal with configuration, while allowing you to vertically and horizontally scale it.

By deploying Cal.com on Railway, you are one step closer to supporting a complete full-stack application with minimal burden. Host your servers, databases, AI agents, and more on Railway.

